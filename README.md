# chmura-lab5
Sprawozdanie – Laboratorium 5
Aleksandra Grzywacz

1.Treść pliku Dockerfile
<img width="832" height="686" alt="image" src="https://github.com/user-attachments/assets/7feae694-5ddd-405d-a8ff-a866ad372a5a" />


2.Budowanie i uruchomienie obrazu

docker build --build-arg VERSION="1.2.3" -t lab5:v2 .
docker run -d -p 8080:80 --name serwer-lab5 lab5:v2

<img width="681" height="161" alt="image" src="https://github.com/user-attachments/assets/dca55ae3-a5ec-41c6-8a48-3178d25215b2" />
<img width="519" height="253" alt="image" src="https://github.com/user-attachments/assets/346a5c4c-5d15-4909-a408-ef78523f6366" />


docker ps
<img width="1405" height="83" alt="image" src="https://github.com/user-attachments/assets/bd16035c-6b71-4aa0-98cd-3d7c38523f98" />

