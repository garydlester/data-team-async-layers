FROM public.ecr.aws/lambda/python:3.10

RUN mkdir /envs

COPY . /envs

RUN python -m venv /envs/data-team-async-env

RUN /envs/data-team-async-env/bin/pip install -r /envs/requirements.txt

CMD ["lambda_function.handler"]
