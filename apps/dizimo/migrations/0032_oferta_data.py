# -*- coding: utf-8 -*-
# Generated by Django 1.11.15 on 2018-10-29 23:31
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('dizimo', '0031_auto_20181008_2221'),
    ]

    operations = [
        migrations.AddField(
            model_name='oferta',
            name='data',
            field=models.DateField(default=django.utils.timezone.now, verbose_name='data'),
            preserve_default=False,
        ),
    ]
