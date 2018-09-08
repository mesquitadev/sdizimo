# -*- coding: utf-8 -*-
# Generated by Django 1.11.15 on 2018-09-08 18:58
from __future__ import unicode_literals

from django.db import migrations, models
import localflavor.br.models


class Migration(migrations.Migration):

    dependencies = [
        ('dizimo', '0020_batismo_hora_batismo'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='batismo',
            options={'ordering': ('-data_batismo', '-hora_batismo'), 'permissions': (('view_batismo', 'Can view batismo'), ('list_batismo', 'Can list batismo'))},
        ),
        migrations.AlterField(
            model_name='dizimista',
            name='bairro',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='dizimista',
            name='cidade',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='dizimista',
            name='comunidade',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='dizimista',
            name='endereco',
            field=models.CharField(blank=True, max_length=250, null=True, verbose_name='endereço'),
        ),
        migrations.AlterField(
            model_name='dizimista',
            name='estado',
            field=localflavor.br.models.BRStateField(blank=True, max_length=2, null=True),
        ),
        migrations.AlterField(
            model_name='dizimista',
            name='estado_civil',
            field=models.CharField(blank=True, choices=[['C', 'Casado'], ['S', 'Solteiro'], ['D', 'Divorciado']], max_length=1, null=True),
        ),
    ]
