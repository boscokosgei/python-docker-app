#Use Python 3.11 on Alpine for a smaller base image
FROM python:3.11-alpine

#set the Container working directory 
WORKDIR /app

#Copy only the requirementsfiles first to leverage caching
COPY requirements.txt .

#Install Python Libraries
RUN pip install -r requirements.txt

#Copy the rest of the Application code
COPY . .
#Expose port 3001,Where Flask will listen 
EXPOSE 3001

#Run the Flask app
CMD ["python","app.py"]
 
