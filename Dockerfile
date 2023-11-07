FROM public.ecr.aws/docker/library/python:3.10

WORKDIR /src

COPY ./analytics/requirements.txt requirements.txt

# install dependencies needed for connect postgresql
RUN apt update -y && apt install -y libpq-dev python3-dev

RUN pip install -r requirements.txt

COPY ./analytics .

CMD python app.py