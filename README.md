Шоб джанго тянув статику з s3 та виконував collectstatic теж на s3 в settings.py потрібно розкоментувати строки підключення до s3.
Створити в iam юзера та групу з повним доступом до s3 в полях AWS_ACCESS_KEY_ID та AWS_SECRET_ACCESS_KEY вписати ключі даного юзера та закоментувати строки в settings.py які виконують collectstatic локально

```
# Save static files in AWS S3

STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static'),
]
AWS_S3_FILE_OVERWRITE = False
AWS_ACCESS_KEY_ID = 'Key'
AWS_SECRET_ACCESS_KEY = 'PrivateKey'
AWS_S3_REGION_NAME = 'eu-west-3'
AWS_STORAGE_BUCKET_NAME = 'koval.crm.django'
STATICFILES_STORAGE = 'storages.backends.s3boto3.S3Boto3Storage'

```
