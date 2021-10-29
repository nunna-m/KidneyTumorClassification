FROM tensorflow/tensorflow:2.4.0-gpu
RUN apt update
RUN apt install -y git
RUN git clone https://github.com/nunna-m/KidneyTumorClassification && cd KidneyTumorClassification/ktc
RUN ./script_tvt_remote.sh