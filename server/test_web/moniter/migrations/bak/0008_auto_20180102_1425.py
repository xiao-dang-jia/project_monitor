# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2018-01-02 06:25
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('moniter', '0007_auto_20180102_1122'),
    ]

    operations = [
        migrations.AlterField(
            model_name='host',
            name='m_timestamp',
            field=models.DateField(max_length=50, null=True, verbose_name='客户端时间戳'),
        ),
    ]