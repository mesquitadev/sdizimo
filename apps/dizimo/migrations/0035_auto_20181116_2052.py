# -*- coding: utf-8 -*-
# Generated by Django 1.11.16 on 2018-11-16 23:52
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dizimo', '0034_pagamento_data'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='doacao',
            options={'ordering': ('-data',), 'permissions': (('view_doacao', 'Can view doacao'), ('list_doacao', 'Can list doacao'))},
        ),
        migrations.AlterModelOptions(
            name='oferta',
            options={'ordering': ('-data',), 'permissions': (('view_oferta', 'Can view oferta'), ('list_oferta', 'Can list oferta'))},
        ),
        migrations.AlterModelOptions(
            name='pagamento',
            options={'ordering': ('-data',), 'permissions': (('view_pagamento', 'Can view pagamento'), ('list_pagamento', 'Can list pagamento'))},
        ),
        migrations.AlterField(
            model_name='dizimista',
            name='estado_civil',
            field=models.CharField(blank=True, choices=[['C', 'Casado(a)'], ['S', 'Solteiro(a)'], ['D', 'Divorciado(a)'], ['V', 'Viúvo(a)']], max_length=1, null=True),
        ),
    ]
