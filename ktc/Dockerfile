FROM tensorflow/tensorflow:2.4.0-gpu
RUN apt-key del 7fa2af80
RUN apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/3bf863cc.pub
RUN apt update
RUN apt install -y git python3-pip libsm6 libxext6 libxrender-dev libgl1-mesa-glx
RUN git clone https://github.com/nunna-m/KidneyTumorClassification
WORKDIR KidneyTumorClassification
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python", "/KidneyTumorClassification/ktc/aggregate.py"]