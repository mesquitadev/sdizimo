# -*- coding: utf-8 -*-
# Generated by Django 1.11.9 on 2018-02-11 13:38
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dizimo', '0008_doacao'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='dizimo',
            unique_together=set([('dizimista', 'referencia')]),
        ),
    ]
