Building a Simple flask application that listens to port 3001 and displays greetings.
Then packaging the app into a Docker container

Steps
1.Creating a Project Folder
mkdir python-docker-app
cd python-docker-app

2.0 Create a basic Flask App
app.py

3.0 Adding dependencies
echo "Flask==2.3.0" >requirements.xt

4.0 Creating a Dockerfile
Dockerfile

5.0 Building and Running Docker
docker build -t python-docker-app .
docker run -p 3001:3001 python-docker-app

6.0 Visiting http://localhost:3001 website