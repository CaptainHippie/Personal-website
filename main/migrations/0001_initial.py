# Generated by Django 4.1.5 on 2023-01-19 18:12

from django.conf import settings
import django.contrib.auth.models
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='CustomUser',
            fields=[
                ('user_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL)),
                ('name_display', models.CharField(max_length=100, null=True)),
                ('profile_pic', models.ImageField(blank=True, default='user_images/default.jpg', upload_to='user_images')),
                ('profile_pic_alt', models.ImageField(blank=True, null=True, upload_to='user_images')),
                ('title', models.CharField(max_length=100, null=True)),
                ('description', models.TextField()),
                ('about_title', models.CharField(max_length=300, null=True)),
                ('about_description', models.TextField()),
                ('about_banner', models.ImageField(blank=True, null=True, upload_to='user_images')),
                ('slug', models.SlugField(default='', max_length=100)),
            ],
            options={
                'verbose_name': 'user',
                'verbose_name_plural': 'users',
                'abstract': False,
            },
            bases=('auth.user',),
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
    ]
