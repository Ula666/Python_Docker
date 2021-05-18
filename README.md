## Python Airplane App with Docker
### TASK:
1. Clone Airport App github repository with 
```
git clone https://github.com/rrose666/eng84-airport-project.git
```
2. Create a Dockerfile to copy airport app folder into the location where we can run the app
3. Edit the Dockerfile and add neccessary command to run it automatically
4. Creat a Docker image
 ```
 docker build -t rrose666/airport-project .
 ```
5. Create a Docker container  
```
docker run -dit -p 8000:8000 rrose666/airport-project
```  
6. Create Docker Hub repository and push the new image 
 ```
 docker push rrose666/airport-project:latest
 ```
7. Open a web browser and run
```
http://localhost:8000/
```
