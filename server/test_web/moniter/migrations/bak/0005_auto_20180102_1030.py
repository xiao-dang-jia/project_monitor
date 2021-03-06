# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2018-01-02 02:30
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('moniter', '0004_auto_20180102_1016'),
    ]

    operations = [
        migrations.AlterField(
            model_name='host',
            name='m_dim',
            field=models.CharField(max_length=50, null=True, verbose_name='监控维度'),
        ),
        migrations.AlterField(
            model_name='host',
            name='m_logger',
            field=models.CharField(max_length=50, null=True, verbose_name='监控日志'),
        ),
        migrations.AlterField(
            model_name='host',
            name='m_timestamp',
            field=models.CharField(max_length=50, null=True, verbose_name='客户端时间戳'),
        ),
        migrations.AlterField(
            model_name='host',
            name='m_type',
            field=models.CharField(max_length=50, null=True, verbose_name='监控类型'),
        ),
        migrations.AlterField(
            model_name='host',
            name='m_value',
            field=models.CharField(max_length=50, null=True, verbose_name='监控值'),
        ),
        migrations.AlterField(
            model_name='host',
            name='project_nick',
            field=models.CharField(max_length=50, null=True, verbose_name='监控项目'),
        ),
        migrations.AlterField(
            model_name='host',
            name='server_ip',
            field=models.GenericIPAddressField(null=True, verbose_name='服务器IP'),
        ),
    ]
