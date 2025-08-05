# Jenkins CI/CD Pipeline - Node.js App  
**(Task 2 - DevOps Internship)**

This project demonstrates a basic **CI/CD pipeline using Jenkins** to build, test, and deploy a simple Node.js application inside a Docker container. It is part of **Task 2 for the DevOps Internship**.

---

## 📁 Project Structure
/my-app
  ├── app.js
  ├── Dockerfile
  ├── Jenkinsfile
  ├── package.json
  └── README.md

---

##  Objective

- Set up a Jenkins pipeline
- Automatically pull code from GitHub on push
- Install dependencies
- Run basic tests
- Build a Docker image
- Deploy the app in a container

---

##  Tech Stack

- **Node.js** – Web application
- **Docker** – Containerization
- **Jenkins** – CI/CD automation
- **GitHub** – Code repository & webhook trigger

---

##  How to Run Locally

### Prerequisites
- Node.js & NPM installed
- Docker installed

### Run using Node.js:
```bash
npm install
npm start

- Access the app at: http://localhost:3000

## Docker Commands
- To Build Docker Image: docker build -t myapp .
- To Run Docker Container: docker run -d -p 3000:3000 myapp

## Jenkins Pipeline
Jenkinsfile Stages:

    Install Dependencies – npm install

    Run Tests – npm test

    Build Docker Image – docker build

    Run Container – Stops existing and runs new one

Trigger:

    Pipeline triggered on every Git push using GitHub webhook.

