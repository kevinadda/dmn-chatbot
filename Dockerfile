FROM gcr.io/tensorflow/tensorflow:0.12.1-devel

MAINTAINER Kevin Adda

COPY dmn-chatbot /root
RUN cd dmn-chatbot && mkdir data && ./fetch_babi_data.sh

EXPOSE 0.0.0.0:8888
EXPOSE 0.0.0.0:6006

CMD ["/bin/bash"]
