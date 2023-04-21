FROM python:3
WORKDIR /usr/src/app
RUN pip install --no-cache-dir pytest
COPY . .
RUN ./install-packages.sh
CMD ["bash"]
