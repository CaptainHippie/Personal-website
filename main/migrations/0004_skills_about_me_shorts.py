# Generated by Django 4.1.5 on 2023-01-19 18:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0003_person_delete_customuser'),
    ]

    operations = [
        migrations.CreateModel(
            name='Skills',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=50, null=True)),
                ('percent', models.PositiveSmallIntegerField(blank=True, null=True)),
                ('who', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.person')),
            ],
        ),
        migrations.CreateModel(
            name='About_Me_shorts',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=30, null=True)),
                ('description', models.CharField(blank=True, max_length=60, null=True)),
                ('who', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.person')),
            ],
        ),
    ]