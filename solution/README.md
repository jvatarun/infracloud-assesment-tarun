docker login
docker pull infracloudio/csvserver:latest
docker images ls
docker run -it docker.io/infracloudio/csvserver:latest

docker container ls -a
docker cp gencsv.sh <ContID>:/csvserver/
docker cp inputdata <Cont ID>:/csvserver/
docker start <Cont ID>

docker  commit <Cont ID> infracloudio/csvserver:latest
docker exec -it <Cont ID> /bin/bash
#inside container to know port
netstat -ano
#Port mapping to 9393
docker run -it --name <contname> -p 9393:9300 infracloudio/csvserver:latest
# with env variable 
docker run -it --name <contname> --env CSVSERVER_BORDER=Orange -p 9393:9300 infracloudio/csvserver:latest
