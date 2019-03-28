FROM tensorflow/tensorflow:1.13.1
EXPOSE 8081
COPY prediction.py /prediction.py
COPY bootstrap.sh /bootstrap.sh
RUN pip install flask
RUN chmod +x /bootstrap.sh
CMD /bootstrap.sh
