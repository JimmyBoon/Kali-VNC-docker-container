# Kali-VNC-docker-container
Docker container running Kali Linux which can be accessed by VNC

Instructions:
1. You will need to have docker install and running.
2. Set your password in the password.txt file.
3. Edit the Dockerfile to choose a install package if required (can be done manually after the container is running).
4. Build the image from the Dockerfile with this command: 

docker run -ti -p 5900:5900 kali:v1 bash

5. Run the docker image and enter container:

docker run -ti -p 5900:5900 kali:v1 bash

6. Start the tightvncserver with this command:

tightvncserver :0 -geometry 1280x800 -depth 16 -pixelformat rgb565

7. Using Real VNC viewer, access your Kali container through the ip address of the computer it is running on and port 5900.

