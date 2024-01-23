#!/bin/bash

# para desplegar la plantilla de CloudFormation utilizamos el comando deploy para actualizar nuestra pila ya existente
aws cloudformation deploy \
   # Indicamos el nombre del fichero YAML
--template-file main.yml \
   # Establecemos el nombre de la pila
--stack-name "tomcat" \
   # Establecemos  las región
--region us-east-1 \
   # Creación de roles IAM con nombres específicos
--capabilities CAPABILITY_NAMED_IAM
