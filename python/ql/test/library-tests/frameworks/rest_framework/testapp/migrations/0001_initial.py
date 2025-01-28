# Generated by Django 3.2.8 on 2021-10-27 11:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Foo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('field_not_displayed', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Bar',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('n', models.IntegerField()),
                ('foo', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='testapp.foo')),
            ],
        ),
    ]
