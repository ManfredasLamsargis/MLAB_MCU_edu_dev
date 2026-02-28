FROM ubuntu:latest

RUN yes | unminimize && apt install -y sudo nano man-db

RUN useradd -m -s /bin/bash user && echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER user

WORKDIR /home/user

CMD ["/bin/bash"]