# -*- coding: utf-8 -*-
# Generated by Django 1.11.9 on 2018-02-11 14:42
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('dizimo', '0011_remove_dizimista_paroquia'),
    ]

    operations = [
        migrations.AddField(
            model_name='dizimista',
            name='paroquia',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='dizimo.Paroquia', verbose_name='paróquia'),
        ),
    ]
