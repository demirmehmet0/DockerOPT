FROM ubuntu:18.04

RUN apt update
RUN apt install python3 -y  
RUN apt install g++ -y 
RUN apt install cmake -y 

RUN mkdir a1_a2_rnbp 
RUN mkdir bp 
RUN mkdir framework-main-2 
RUN mkdir LWFWSW 
RUN mkdir matrices 
RUN mkdir paar 
RUN mkdir yosysTools 

copy a1_a2_rnbp /
copy bp /
copy framework-main-2 /
copy LWFWSW /
copy matrices /
copy paar /
copy yosysTools /
copy main.py /
copy matrix.txt /
copy parameter.txt / 
CMD [ "python3", "main.py"]