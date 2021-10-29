FROM tensorflow/tensorflow:2.4.0-gpu
RUN apt update
RUN apt install -y git
RUN git clone https://github.com/nunna-m/KidneyTumorClassification
WORKDIR KidneyTumorClassification
RUN pip3 install -r requirements.txt
ENTRYPOINT ["bash", "/KidneyTumorClassification/ktc/script_tvt_remote.sh"]