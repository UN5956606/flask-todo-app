# application/__init__.py
# -*- coding: utf-8 -*-

from application.app import create_app
from application.extensions import db

__all__ = ['create_app', 'db']