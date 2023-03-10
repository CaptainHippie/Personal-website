# Generated by Django 4.1.5 on 2023-01-20 08:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0007_rename_about_me_shorts_achievements'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='person',
            name='age',
        ),
        migrations.AddField(
            model_name='person',
            name='address',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='person',
            name='date_of_birth',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='person',
            name='freelance',
            field=models.CharField(choices=[('yes', 'Available'), ('no', 'Unavailable')], default='no', max_length=5),
        ),
        migrations.AddField(
            model_name='person',
            name='languages',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='person',
            name='phone',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]
