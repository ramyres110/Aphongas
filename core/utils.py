from django.conf import settings
import os
from uuid import uuid4

INDEX_IMAGE_STATICFILES_DIRS = 0

def upload_path_and_rename(instance, filename):
    ext = filename.split('.')[-1]
    # get filename
    if instance.pk:
        filename = '{}.{}'.format(instance.pk, ext)
    else:
        # set filename as random string
        filename = '{}.{}'.format(uuid4().hex, ext)
    # return the whole path to the file
    return os.path.join("public","uploads", filename)