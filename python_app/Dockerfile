# of course we could use alpine :)
FROM ubuntu:latest
MAINTAINER Robert Kubiś "robert.h3x@gmail.com"

# Update and install packages
# apt does not have a stable docker CLI interface
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev build-essential && \
    pip install --upgrade pip


# Copy application configuration into docker and set workdir
COPY ./requirements.txt ./app/
WORKDIR /app
RUN pip install -r requirements.txt

# Copy application configuration into docker and set workdir
COPY ./ /app
WORKDIR /app


ENTRYPOINT ["python"]
CMD ["app.py"]
