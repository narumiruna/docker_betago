FROM gw000/keras
MAINTAINER narumi
WORKDIR /
RUN pip install betago &&\
    git clone https://github.com/maxpumperla/betago.git &&\
    cd betago &&\
    echo 'python run_demo.py' > run.sh &&\
    chmod +x run.sh
WORKDIR /betago
CMD ./run.sh
