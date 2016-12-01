FROM kartoza/qgis-server:LTR

RUN apt-get update && apt-get install -y nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN mkdir -p /usr/src/qwc2
WORKDIR /usr/src/qwc2

COPY . /usr/src/qwc2
RUN npm install
RUN npm run-script prod

COPY scripts/qgis.conf /etc/apache2/conf-enabled
CMD ["apache2", "-DFOREGROUND"]
