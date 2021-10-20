# Dockerfile
# #############################################################################
#
# Build image:
# >> docker build -t cow-app . 
#
# Run container:
# >> docker run --name cow -it cow-app
#
# #############################################################################

FROM    python:3.8.10

COPY    requirements.txt /tmp/
RUN     pip install -r /tmp/requirements.txt

WORKDIR /workdir
COPY    . .

CMD     python3 -m main

