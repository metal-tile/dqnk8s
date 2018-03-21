FROM gcr.io/tensorflow/tensorflow
EXPOSE 8081
COPY prediction.py /prediction.py
COPY bootstrap.sh /bootstrap.sh
RUN pip install flask
RUN chmod +x /bootstrap.sh
CMD /bootstrap.sh
