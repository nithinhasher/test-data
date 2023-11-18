# Use a lightweight base image
FROM python:3.11

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY

ENV AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
ENV AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

WORKDIR /app

COPY requirements.txt .

COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install -r requirements.txt
RUN apt-get update && apt-get install -y awscli

RUN rm -rf /var/lib/apt/lists/*

EXPOSE 80
# Set the default command to run your application
CMD ["sh", "./run.sh"]