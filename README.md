# chmura-lab5
Sprawozdanie – Laboratorium 5
Aleksandra Grzywacz

1.Treść pliku Dockerfile
FROM node:alpine AS builder
ARG VERSION
ENV APP_VERSION=$VERSION
WORKDIR /app
COPY index.sh .
RUN sh index.sh

FROM nginx:alpine
RUN apk add --no-cache curl
COPY --from=builder /app/index.html /usr/share/nginx/html/index.html
HEALTHCHECK --interval=10s --timeout=3s 
  CMD curl -f http://localhost/ || exit 1
EXPOSE 80

2.Budowanie i uruchomienie obrazu

docker build --build-arg VERSION=v1.2.3 -t web-zadanie:v5 .
docker run -d -p 8080:80 --name test_lab5 web-zadanie:v5
<img width="1037" height="45" alt="image" src="https://github.com/user-attachments/assets/33848598-760e-4681-90ac-fc33b59fd70c" />
<img width="872" height="429" alt="image" src="https://github.com/user-attachments/assets/7dfed4b9-e8fe-4119-bb25-9937fc5ce907" />
<img width="681" height="161" alt="image" src="https://github.com/user-attachments/assets/dca55ae3-a5ec-41c6-8a48-3178d25215b2" />


