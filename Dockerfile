FROM python:2.7

WORKDIR /opt/elastalert
RUN pip install elastalert
WORKDIR .elastalert-0.1.18
RUN pip install "setuptools>=11.3"
RUN python setup.py install
RUN pip install "elasticsearch>=5.0.0"

ENTRYPOINT ["python" ,"elastalert/elastalert.py","--config", "/opt/elastalert/config/config.yaml"]
