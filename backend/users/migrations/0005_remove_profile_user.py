# Generated by Django 5.2.2 on 2025-06-11 11:55

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("users", "0004_remove_studentprofile_user"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="profile",
            name="user",
        ),
    ]
