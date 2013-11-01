from .base import *

# we now required django celery to be present
import djcelery
djcelery.setup_loader()


CACHES = {
    'default': {
        'BACKEND':  'django.core.cache.backends.locmem.LocMemCache',
        'LOCATION': 'unique-snowflake'
    }
}