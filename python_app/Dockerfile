# of course we could use alpine :)
FROM ubuntu:latest
MAINTAINER Robert Kubiś "robert.h3x@gmail.com"

# Update and install packages
# apt does not have a stable docker CLI interface
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

RUN pip install --upgrade pip

# Copy application configuration into docker and set workdir
COPY ./ /app
WORKDIR /app

# Install python packages
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]
