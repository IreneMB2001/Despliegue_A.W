#!/bin/bash

# Eliminar la pila creada
aws cloudformation delete-stack \
--stack-name "tomcat"  \
