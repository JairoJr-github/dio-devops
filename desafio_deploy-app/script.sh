#!/bin/bash

echo "criando as imagens....."

docker build -t jairossjunior/projeto-backend:1.0 backend/.

docker build -t jairossjunior/projeto-database:1.0 database/.

echo "Realizando push das imagens....."

docker push jairossjunior/projeto-backend:1.0

docker push jairossjunior/projeto-database:1.0

echo "Criando serviços no cluster kubernetes....."

kubectl apply -f services.yml

echo "Criando deployments no cluster kubernetes....."

kubectl apply -f deployment.yml




