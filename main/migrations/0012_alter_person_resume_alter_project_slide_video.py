# Generated by Django 4.1.5 on 2023-01-20 16:47

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0011_project_project_category_person_google_map_embed_src_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='person',
            name='resume',
            field=models.FileField(blank=True, null=True, upload_to='resumes', validators=[django.core.validators.FileExtensionValidator(['pdf', 'docx'])]),
        ),
        migrations.AlterField(
            model_name='project_slide',
            name='video',
            field=models.FileField(blank=True, null=True, upload_to='videos', validators=[django.core.validators.FileExtensionValidator(['mp4', 'mkv', 'avi', 'flv'])]),
        ),
    ]
