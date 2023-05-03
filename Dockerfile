FROM python:3.8
RUN apt-get update -y && apt-get install -y build-essential
RUN apt-get install -y python3-opencv
RUN v4l2-ctl
COPY . /app
WORKDIR /app 
RUN pip3 install -r requirements.txt
CMD ["python3", "cam_test.py"]