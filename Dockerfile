FROM store/softwareag/webmethods-microservicesruntime:10.4.0.0 

USER root


COPY --chown=sagadmin:root ./jars/ /opt/softwareag/IntegrationServer/lib/jars/

COPY --chown=sagadmin:root ./mscconfigs/mscsend.properties /mscconfigs/


RUN chgrp -Rf root /opt/softwareag/ && chmod -Rf 775 /opt/softwareag/ 

USER sagadmin 
