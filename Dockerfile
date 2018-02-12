FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
ADD Pipfile /code
WORKDIR /code
RUN pip install pipenv
RUN ln -s $(which python) /bin/python
RUN pipenv install --system
ADD . /code
