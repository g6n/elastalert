FROM python:2.7

WORKDIR /opt/elastalert

RUN pip install elastalert
RUN pip install "setuptools>=11.3"
RUN phyton setup.py install
RUN pip install "elasticsearch>=5.0.0"

ENTRYPOINT ["python" ,"elastalert/elastalert.py","--config", "/opt/elastalert/config/config.yaml"]
