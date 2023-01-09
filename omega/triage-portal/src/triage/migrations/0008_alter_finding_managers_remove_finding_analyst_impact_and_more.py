# Generated by Django 4.0 on 2021-12-12 01:22

from django.db import migrations, models
import django.db.models.manager


class Migration(migrations.Migration):

    dependencies = [
        ('triage', '0007_filter_uuid'),
    ]

    operations = [
        migrations.AlterModelManagers(
            name='finding',
            managers=[
                ('active_findings', django.db.models.manager.Manager()),
            ],
        ),
        migrations.RemoveField(
            model_name='finding',
            name='analyst_impact',
        ),
        migrations.RemoveField(
            model_name='finding',
            name='impact_context',
        ),
        migrations.RemoveField(
            model_name='finding',
            name='impact_usage',
        ),
        migrations.AddField(
            model_name='finding',
            name='estimated_impact',
            field=models.PositiveIntegerField(blank=True, null=True),
        ),
    ]