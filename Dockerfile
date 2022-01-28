FROM kalilinux/kali-rolling
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install kali-desktop-xfce
RUN apt-get -y install tightvncserver

ENV USER root
COPY password.txt .
RUN cat password.txt password.txt | vncpasswd
RUN rm password.txt

# Choose one of the following kali package options:
# RUN apt -y install kali-linux-large
# RUN apt -y install kali-linux-everything
# RUN apt -y install kali-linux-top10




