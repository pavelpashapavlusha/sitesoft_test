FROM python:3.11.8-slim


RUN mkdir /sitesoft_test

COPY requirements.txt /sitesoft_test


RUN pip3 install -r /sitesoft_test/requirements.txt --no-cache-dir


COPY test_parser.py /sitesoft_test


COPY chromedriver.exe /sitesoft_test


COPY db.sqlite3 /sitesoft_test


COPY parser_sitesoft_dj /sitesoft_test

 
WORKDIR /sitesoft_test


RUN cd parser_sitesoft


CMD ["python3", "manage.py", "runserver", "0:8000"] 