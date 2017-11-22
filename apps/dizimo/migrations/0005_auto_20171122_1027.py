# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-11-22 13:27
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import sorl.thumbnail.fields


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('dizimo', '0004_auto_20171102_1703'),
    ]

    operations = [
        migrations.CreateModel(
            name='Dizimo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('recebida_em', models.DateTimeField(auto_now_add=True, verbose_name='recebida em')),
                ('valor', models.DecimalField(decimal_places=2, max_digits=10)),
                ('referencia', models.DateField(help_text='Mês/Ano', verbose_name='referência')),
            ],
            options={
                'ordering': ('-referencia', '-recebida_em'),
            },
        ),
        migrations.CreateModel(
            name='Oferta',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('recebida_em', models.DateTimeField(auto_now_add=True, verbose_name='recebida em')),
                ('valor', models.DecimalField(decimal_places=2, max_digits=10)),
                ('usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='usuário')),
            ],
            options={
                'ordering': ('-recebida_em',),
            },
        ),
        migrations.AlterField(
            model_name='dizimista',
            name='foto',
            field=sorl.thumbnail.fields.ImageField(blank=True, null=True, upload_to='dizimistas/fotos'),
        ),
        migrations.AddField(
            model_name='dizimo',
            name='dizimista',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='dizimos', to='dizimo.Dizimista'),
        ),
        migrations.AddField(
            model_name='dizimo',
            name='usuario',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='usuário'),
        ),
    ]
