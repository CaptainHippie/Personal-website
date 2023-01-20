# Generated by Django 4.1.5 on 2023-01-20 03:28

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0004_skills_about_me_shorts'),
    ]

    operations = [
        migrations.CreateModel(
            name='Education',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=50, null=True)),
                ('start_date', models.DateField()),
                ('end_date', models.DateField()),
                ('institution', models.CharField(blank=True, max_length=200, null=True)),
                ('who', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.person')),
            ],
        ),
    ]
