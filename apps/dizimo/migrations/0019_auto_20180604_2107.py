# -*- coding: utf-8 -*-
# Generated by Django 1.11.13 on 2018-06-05 00:07
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('dizimo', '0018_auto_20180604_2103'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='dizimo',
            options={'ordering': ('-referencia', '-cadastrado_em'), 'permissions': (('view_dizimo', 'Can view dizimo'), ('list_dizimo', 'Can list dizimo'))},
        ),
        migrations.AlterModelOptions(
            name='doacao',
            options={'ordering': ('-cadastrado_em',), 'permissions': (('view_doacao', 'Can view doacao'), ('list_doacao', 'Can list doacao'))},
        ),
        migrations.AlterModelOptions(
            name='oferta',
            options={'ordering': ('-cadastrado_em',), 'permissions': (('view_oferta', 'Can view oferta'), ('list_oferta', 'Can list oferta'))},
        ),
        migrations.RemoveField(
            model_name='batismo',
            name='recebida_em',
        ),
        migrations.RemoveField(
            model_name='dizimo',
            name='recebida_em',
        ),
        migrations.RemoveField(
            model_name='doacao',
            name='recebida_em',
        ),
        migrations.RemoveField(
            model_name='oferta',
            name='recebida_em',
        ),
        migrations.AddField(
            model_name='batismo',
            name='cadastrado_em',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now, verbose_name='cadastrado em'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='dizimo',
            name='cadastrado_em',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now, verbose_name='cadastrado em'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='doacao',
            name='cadastrado_em',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now, verbose_name='cadastrado em'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='oferta',
            name='cadastrado_em',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now, verbose_name='cadastrado em'),
            preserve_default=False,
        ),
    ]
