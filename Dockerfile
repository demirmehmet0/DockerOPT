FROM ubuntu:latest

RUN apt update
RUN apt install python3 -y  
RUN apt install g++ -y 
 
RUN mkdir root0
RUN cd root0 
RUN mkdir test
ADD globalopt /root0/test
RUN cd test
WORKDIR /root0/test
CMD [ "python3", "main.py"]