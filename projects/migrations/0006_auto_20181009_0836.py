# Generated by Django 2.0.8 on 2018-10-09 08:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0005_auto_20181009_0834'),
    ]

    operations = [
        migrations.AlterField(
            model_name='projects',
            name='description',
            field=models.CharField(max_length=140),
        ),
    ]