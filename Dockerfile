FROM store/softwareag/webmethods-microservicesruntime:10.4.0.

USER root


COPY  ./jars/ /opt/softwareag/IntegrationServer/lib/jars/

COPY  ./mscconfigs/mscsend.properties /mscconfigs/
RUN chgrp -Rf root /opt/softwareag/ && chmod -Rf 777 /opt/softwareag/ 
RUN chmod -R +w /opt/softwareag/IntegrationServer/bin
USER sagadmin 
