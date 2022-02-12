#------------------------------------------------------------------------------
#
# Python3 & Scrapy
#
# cf.
# - https://scrapy.org/
#
#------------------------------------------------------------------------------
FROM python:3.10-slim

ARG USER=peter

RUN useradd -m $USER
USER $USER

ENV PATH $PATH:/home/$USER/.local/bin
WORKDIR /home/$USER

RUN pip install pip --upgrade && pip install scrapy pillow

RUN mkdir -p /home/$USER/spiders && mkdir -p /home/$USER/outputs
COPY --chown=$USER:$USER ./entrypoint.sh ./entrypoint.sh

ENTRYPOINT ["sh", "entrypoint.sh"]

