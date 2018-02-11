# -*- coding: utf-8 -*-
# Generated by Django 1.11.9 on 2018-02-11 14:04
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('dizimo', '0009_auto_20180211_1038'),
    ]

    operations = [
        migrations.CreateModel(
            name='Paroquia',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=250, unique=True)),
            ],
            options={
                'ordering': ('nome',),
            },
        ),
        migrations.AlterField(
            model_name='dizimista',
            name='paroquia',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dizimo.Paroquia', verbose_name='paróquia'),
        ),
    ]
