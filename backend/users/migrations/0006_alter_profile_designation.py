# Generated by Django 5.2.2 on 2025-06-11 11:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("users", "0005_remove_profile_user"),
    ]

    operations = [
        migrations.AlterField(
            model_name="profile",
            name="designation",
            field=models.CharField(
                choices=[("DR", "Doctor"), ("ST", "Student"), ("VR", "Volunteer")],
                max_length=2,
            ),
        ),
    ]
