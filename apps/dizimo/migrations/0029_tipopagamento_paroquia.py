# -*- coding: utf-8 -*-
# Generated by Django 1.11.15 on 2018-10-09 01:15
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('dizimo', '0028_delete_igreja'),
    ]

    operations = [
        migrations.AddField(
            model_name='tipopagamento',
            name='paroquia',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='dizimo.Paroquia', verbose_name='paróquia'),
        ),
    ]
