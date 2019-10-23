FROM python:3.7

RUN mkdir /app
WORKDIR /app
ADD . /app/
RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "/app/main.py"]

#FROM store/softwareag/webmethods-microservicesruntime:10.4.0.
#USER root
#COPY  ./jars/ /opt/softwareag/IntegrationServer/lib/jars/
#COPY  ./mscconfigs/mscsend.properties /mscconfigs/
#RUN chgrp -Rf root /opt/softwareag/ && chmod -Rf 775 /opt/softwareag/ 
#USER sagadmin 
