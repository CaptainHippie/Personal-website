# Generated by Django 4.1.5 on 2023-01-19 18:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0002_alter_customuser_about_description_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Person',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(max_length=100, null=True)),
                ('last_name', models.CharField(blank=True, max_length=100, null=True)),
                ('email', models.EmailField(max_length=150, unique=True)),
                ('name_display', models.CharField(max_length=100, null=True)),
                ('profile_pic', models.ImageField(blank=True, default='user_images/default.jpg', upload_to='user_images')),
                ('profile_pic_alt', models.ImageField(blank=True, null=True, upload_to='user_images')),
                ('title', models.CharField(blank=True, max_length=100, null=True)),
                ('description', models.TextField(blank=True, null=True)),
                ('about_title', models.CharField(blank=True, max_length=300, null=True)),
                ('about_description', models.TextField(blank=True, null=True)),
                ('about_banner', models.ImageField(blank=True, null=True, upload_to='user_images')),
                ('slug', models.SlugField(default='', max_length=100)),
            ],
        ),
        migrations.DeleteModel(
            name='CustomUser',
        ),
    ]
