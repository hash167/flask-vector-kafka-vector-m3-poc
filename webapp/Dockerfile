FROM python:3.9
RUN apt-get install curl && curl -1sLf 'https://repositories.timber.io/public/vector/cfg/setup/bash.deb.sh' | bash
RUN apt-get install vector -y
ADD ./vector.toml /etc/vector/vector.toml
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5001
ADD ./start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh
CMD [ "/usr/local/bin/start.sh" ]