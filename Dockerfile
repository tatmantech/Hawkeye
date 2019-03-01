FROM python:3.7

#LABEL MAINTAINER=0xbug
LABEL MAINTAINER=tatmantech

ENV TZ=US/Central

EXPOSE 80
EXPOSE 5000

RUN apt-get update
#RUN apt-get install --no-install-recommends -y curl gnupg git redis-server supervisor software-properties-common wget
RUN apt-get install --no-install-recommends -y curl gnupg git supervisor software-properties-common wget
RUN curl https://openresty.org/package/pubkey.gpg | apt-key add -
RUN add-apt-repository -y "deb http://openresty.org/package/debian $(lsb_release -sc) openresty"
RUN apt-get update
RUN apt-get install -y openresty

# silly flask app detour for testing - uses default app.py from docker-compose instructions
ADD ./app.py /code

#ADD ./requirements.txt /code
#WORKDIR /code
# RUN pip install -r /code/requirements.txt
#CMD ["python", "app.py"]

COPY ./deploy /Hawkeye/deploy
COPY ./client/dist /Hawkeye/client/dist
COPY ./server /Hawkeye/server

#RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r /Hawkeye/deploy/pyenv/requirements.txt -U
RUN pip install /Hawkeye/deploy/pyenv/requirements.txt -U
RUN cp /Hawkeye/deploy/nginx/*.conf /usr/local/openresty/nginx/conf/
RUN cp /Hawkeye/deploy/supervisor/*.conf /etc/supervisor/conf.d/

WORKDIR /Hawkeye/server

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]
