FROM gw000/keras
MAINTAINER narumi
RUN pip install betago &&\
    git clone https://github.com/maxpumperla/betago.git &&\
    echo 'python /betago/run_demo.py' > run.sh &&\
    chmod +x run.sh
CMD /run.sh
