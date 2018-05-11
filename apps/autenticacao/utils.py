# -*- coding: utf-8 -*-

from unicodedata import normalize

from django.apps import apps
from django.contrib.auth.models import Group, Permission
from django.contrib.contenttypes.models import ContentType


def to_ascii(txt, codif='utf-8'):
    return normalize('NFKD', txt.decode(codif)).encode('ASCII', 'ignore')


def sync_groups_and_permissions(data):
    """
    Syncronize groups and permissions.
    Group is created if not exists. Permissions must already exists.

    ``data`` format:
    {'<group_name>': ['<ct_app_label>.<ct_model>.<p_codename>']}

    Example of ``data``:
    {'operators': [
        'blog.article.add_article', ''blog.article.change_article'],
     'admins':
        ['blog.article.add_article', 'blog.article.change_article', 'blog.article.delete_article']
    }
    """
    def get_perm(p):
        """
        ``p`` format: '<ct_app_label>.<ct_model>.<p_codename>'
        """
        try:
            ct_app_label, ct_model, p_codename = p.split('.')
        except ValueError:
            raise ValueError('Value must be in format "<ct_app_label>.<ct_model>.<p_codename>". Got "{0}"'.format(p))
        try:
            return Permission.objects.get(
                content_type__app_label=ct_app_label,
                content_type__model=ct_model,
                codename=p_codename
            )
        except Permission.DoesNotExist:
            modelo = apps.get_model(ct_app_label, ct_model)
            if p_codename in ['{}_{}'.format(permission, ct_model) for permission in modelo._meta.default_permissions]:
                return Permission.objects.get_or_create(content_type=ContentType.objects.get_for_model(modelo), codename=p_codename, defaults={'name': 'Pode visualizar {}'.format(p_codename)})[0]
            raise Permission.DoesNotExist('Permission "{0}" does not exist.'.format(p))

    for group_name, perms in data.items():
        group, created = Group.objects.get_or_create(name=group_name)
        for p in perms:
            try:
                perm = get_perm(p)
                group.permissions.add(perm)
            except Permission.DoesNotExist as e:
                print(e)
