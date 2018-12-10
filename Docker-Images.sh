#!/bin/bash
# Import Docker Containers to your Docker Hub

dockerhubuser="sowens81"

Docker pull weaveworksdemos/carts:0.4.8
docker tag weaveworksdemos/carts:0.4.8 ${dockerhubuser}/carts:0.4.8
Docker push ${dockerhubuser}/carts:0.4.8

Docker pull weaveworksdemos/catalogue:0.3.5
docker tag weaveworksdemos/catalogue:0.3.5 ${dockerhubuser}/catalogue:0.3.5
Docker push ${dockerhubuser}/catalogue:0.3.5

Docker pull weaveworksdemos/catalogue-db:0.3.0
docker tag weaveworksdemos/catalogue-db:0.3.0 ${dockerhubuser}/catalogue-db:0.3.0
Docker push ${dockerhubuser}/catalogue-db:0.3.0

Docker pull weaveworksdemos/front-end:0.3.12
docker tag weaveworksdemos/front-end:0.3.12 ${dockerhubuser}/front-end:0.3.12
Docker push ${dockerhubuser}/front-end:0.3.12

Docker pull weaveworksdemos/orders:0.4.7
docker tag weaveworksdemos/orders:0.4.7 ${dockerhubuser}/orders:0.4.7
Docker push ${dockerhubuser}/orders:0.4.7

Docker pull weaveworksdemos/payment:0.4.3
docker tag weaveworksdemos/payment:0.4.3 ${dockerhubuser}/payment:0.4.3
Docker push ${dockerhubuser}/payment:0.4.3

Docker pull weaveworksdemos/queue-master:0.3.1
docker tag weaveworksdemos/queue-master:0.3.1 ${dockerhubuser}/queue-master:0.3.1
Docker push ${dockerhubuser}/queue-master:0.3.1

Docker pull weaveworksdemos/shipping:0.4.8
docker tag weaveworksdemos/shipping:0.4.8 ${dockerhubuser}/shipping:0.4.8
Docker push ${dockerhubuser}/shipping:0.4.8

Docker pull weaveworksdemos/user-db:0.4.0
docker tag weaveworksdemos/user-db:0.4.0 ${dockerhubuser}/user-db:0.4.0
Docker push ${dockerhubuser}/user-db:0.4.0

Docker pull weaveworksdemos/user:0.4.7
docker tag weaveworksdemos/user:0.4.7 ${dockerhubuser}/user:0.4.7
Docker push ${dockerhubuser}/user:0.4.7











