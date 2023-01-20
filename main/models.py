from django.db import models
from django_countries.fields import CountryField
from ckeditor.fields import RichTextField
from django.core.validators import FileExtensionValidator
from django.db.models.signals import pre_save
from django.utils.text import slugify

class Person(models.Model):
    first_name = models.CharField(max_length=100, null=True)
    last_name = models.CharField(max_length=100, null=True, blank=True)
    email = models.EmailField(unique=True, max_length=150)
    name_display = models.CharField(max_length=100, null=True)
    date_of_birth = models.DateField(null=True, blank=True)
    profile_pic = models.ImageField(default='user_images/default.jpg', upload_to='user_images', blank=True)

    title = models.CharField(max_length=100, null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    country = CountryField(blank_label='(select country)', null=True, blank=True)

    phone = models.CharField(max_length=100, null=True, blank=True)
    address = models.TextField(null=True, blank=True)
    languages = models.CharField(max_length=100, null=True, blank=True)

    freelance = models.CharField(max_length=5, choices=(("yes", "Available"),("no", "Unavailable")), default='no')
    resume = models.FileField(null=True, blank=True, validators=[FileExtensionValidator(['pdf','docx']), ], upload_to='resumes')
    slug = models.SlugField(default='', max_length=100)
    google_map_embed_src = models.CharField(max_length=800, null=True, blank=True)

    def __str__(self):
        return self.name_display

class Achievements(models.Model):
    who = models.ForeignKey(Person, on_delete=models.CASCADE)
    title = models.CharField(max_length=30, null=True, blank=True)
    description = models.CharField(max_length=60, null=True, blank=True)

class Skills(models.Model):
    who = models.ForeignKey(Person, on_delete=models.CASCADE)
    title = models.CharField(max_length=100, null=True, blank=True)
    percent = models.PositiveSmallIntegerField(null=True, blank=True)

class Education(models.Model):
    who = models.ForeignKey(Person, on_delete=models.CASCADE)
    title = models.CharField(max_length=100, null=True, blank=True)
    start_date = models.DateField()
    end_date = models.DateField()
    ongoing = models.BooleanField(default=False)
    institution = models.CharField(max_length=200, null=True, blank=True)
    description = models.TextField(null=True, blank=True)

class Experience(models.Model):
    who = models.ForeignKey(Person, on_delete=models.CASCADE)
    title = models.CharField(max_length=100, null=True, blank=True)
    start_date = models.DateField()
    end_date = models.DateField()
    ongoing = models.BooleanField(default=False)
    company = models.CharField(max_length=200, null=True, blank=True)
    description = models.TextField(null=True, blank=True)

class Project_Category(models.Model):
    name = models.CharField(max_length=100, null=True, blank=True)
    icon = models.CharField(max_length=100, null=True, blank=True)

    def __str__(self):
        return self.name

class Project(models.Model):
    who = models.ForeignKey(Person, on_delete=models.CASCADE)
    title = models.CharField(max_length=100, null=True, blank=True)
    category = models.ForeignKey(Project_Category, on_delete=models.CASCADE)
    preview_pic = models.ImageField(default='project_images/default.jpg', upload_to='project_images', blank=True)
    client = models.CharField(max_length=50, null=True, blank=True)
    languages = models.CharField(max_length=200, null=True, blank=True)
    priority = models.PositiveSmallIntegerField(default=2)

    preview_text = models.CharField(max_length=50, null=True, blank=True)
    preview_link = models.CharField(max_length=200, null=True, blank=True)

    source_code_text = models.CharField(max_length=50, null=True, blank=True)
    source_code_link = models.CharField(max_length=200, null=True, blank=True)

    def __str__(self):
        return self.who.name_display + "-" + self.category.name + "-" + self.title

class Project_slide(models.Model):
    project = models.ForeignKey(Project, on_delete=models.CASCADE)
    category = models.CharField(max_length=10, choices=(("img", "Image"),("yt_link", "YouTube Video"),("vid", "Uploaded Video")), default='img')
    image = models.ImageField(null=True, upload_to='project_images', blank=True)
    youtube_embed_link = models.CharField(max_length=600, null=True, blank=True)
    video = models.FileField(null=True, blank=True, validators=[FileExtensionValidator(['mp4','mkv','avi','flv']), ], upload_to='videos')
    video_poster = models.ImageField(null=True, upload_to='project_images', blank=True)

class Blog(models.Model):
    who = models.ForeignKey(Person, on_delete=models.CASCADE)
    title = models.CharField(max_length=150, null=True, blank=True)
    date = models.DateField(null=True, blank=True)
    tags = models.CharField(max_length=200, null=True, blank=True)
    banner_image = models.ImageField(null=True, upload_to='blog', blank=True)
    banner_image_url = models.CharField(max_length=500, null=True, blank=True)
    slug = models.CharField(max_length=150, null=True, blank=True)
    content = RichTextField()

    def __str__(self):
        return self.who.name_display + "-" + self.title

def return_slug(slug, qs, instance):
    exists = qs.exists()
    if exists:
        new_slug = "%s-%s" % (slug, qs.first().id)
        return create_slug(instance, new_slug=new_slug)

def create_slug(instance, new_slug=None):
    slug = slugify(instance.title)
    if new_slug is not None:
        slug = new_slug
    qs = Blog.objects.filter(slug=slug).order_by('-id')
    return_slug(slug, qs, instance)
    return slug

def pre_save_post_receiver(sender, instance, *args, **kwargs):
    if not instance.slug:
        instance.slug = create_slug(instance)

pre_save.connect(pre_save_post_receiver, Blog)

class Social_Media(models.Model):
    name = models.CharField(max_length=50, null=True, blank=True)
    icon_class = models.CharField(max_length=50, null=True, blank=True)

    def __str__(self):
        return self.name

class Social_Media_links(models.Model):
    who = models.ForeignKey(Person, on_delete=models.CASCADE)
    platform = models.ForeignKey(Social_Media, on_delete=models.CASCADE)
    link  = models.CharField(max_length=150, null=True, blank=True)

    def __str__(self):
        return self.who.name_display + "-" + self.platform.name
