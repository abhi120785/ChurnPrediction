FROM python:3.7-stretch
MAINTAINER Abhishek Agrawal <abhi120785@gmail.com>

# install build utilities
RUN apt-get update && \
	apt-get install -y gcc make apt-transport-https ca-certificates build-essential
	
# check our python environment
RUN python3 --version
RUN pip3 --version

# set the working directory for containers
#WORKDIR  /usr/src/model

# Installing python dependencies
RUN pip install anaconda
RUN pip install xgboost
RUN pip install pandas
RUN pip install numpy
RUN pip install matplotlib

# Copy all the files from the project’s root to the working directory
COPY ./model/src/* /
RUN ls -la /*

# Running Python Application
CMD ["python3", "/XgboostExample.py"]
