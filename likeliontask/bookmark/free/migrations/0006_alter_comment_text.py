# Generated by Django 4.0.6 on 2022-07-27 12:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('free', '0005_comment'),
    ]

    operations = [
        migrations.AlterField(
            model_name='comment',
            name='text',
            field=models.CharField(max_length=20),
        ),
    ]
