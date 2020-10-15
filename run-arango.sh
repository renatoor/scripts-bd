#!/bin/bash

sudo docker run -d -v /home/renato.oliveira/Documentos/Mestrado/BD:/tmp -p 8529:8529 -e ARANGO_ROOT_PASSWORD=openSesame arangodb/arangodb:3.7.2.1 
