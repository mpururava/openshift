FROM store/softwareag/webmethods-microservicesruntime:10.4.0.0 

USER root


COPY  ./jars/ /opt/softwareag/IntegrationServer/lib/jars/

COPY  ./mscconfigs/mscsend.properties /mscconfigs/


RUN chgrp -Rf root /opt/softwareag/ && chmod -Rf 775 /opt/softwareag/ 

USER sagadmin 
