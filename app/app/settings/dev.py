from .base import *

# SECURITY WARNING: don't run with debug turned on in production!
#DEBUG = True

# SECURITY WARNING: keep the secret key used in production secret!
#SECRET_KEY = "django-insecure-zamqnhl^5gb6af3ef$w(r2%4l%1w@2x=t_*71^r5_moa8cg*xg"

# SECURITY WARNING: define the correct hosts in production!
#ALLOWED_HOSTS = ["*"]

SECRET_KEY = os.environ.get("SECRET_KEY")
DEBUG = os.environ.get("DEBUG")
ALLOWED_HOSTS = os.environ.get("DJANGO_ALLOWED_HOSTS").split(" ")

# Database PostgreSQL
DATABASES = {
    'default': {
        'ENGINE': os.environ.get("SQL_ENGINE"),
        'NAME': os.environ.get("SQL_DATABASE"),
        'USER': os.environ.get("SQL_USER"),
        'PASSWORD': os.environ.get("SQL_PASSWORD"),
        'HOST': os.environ.get("SQL_HOST"),
        'PORT': os.environ.get("SQL_PORT"),
    }
}




EMAIL_BACKEND = "django.core.mail.backends.console.EmailBackend"


try:
    from .local import *
except ImportError:
    pass
