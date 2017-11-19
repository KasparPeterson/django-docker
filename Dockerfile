# Dockerfile

# FROM directive instructing base image to build upon
FROM python:2.7-slim

COPY requirements.txt /

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . /

COPY start.sh /start.sh

# COPY startup script into known file location in container
COPY start.sh /start.sh

# EXPOSE port 8000 to allow communication to/from server
EXPOSE 8000

WORKDIR helloworld

# CMD specifcies the command to execute to start the server running.
CMD ["/start.sh"]