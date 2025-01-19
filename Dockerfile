FROM python:3.13.1-slim

RUN groupadd -r $USER_NAME || true && useradd -r -g $USER_NAME -m $USER_NAME || true

USER $USER_NAME

ENV PATH="/home/$USER_NAME/.local/bin:${PATH}"
WORKDIR /$USER_NAME

COPY ./run.sh .
COPY ./requirements.txt .
COPY ./app ./app

EXPOSE 8000

CMD [ "bash" , "-c", "/$USER_NAME/run.sh" ]