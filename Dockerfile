# Source image
FROM python:3.8-slim-buster
# Copy the requirement dependencies to install
COPY ./requirements.txt /app/requirements.txt
# Define a working directory
WORKDIR /app
# install the requirements dependencies
RUN pip install -r requirements.txt
# Copy the app.py file to the container
COPY ./app/ /app
# Launch app
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]