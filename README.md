
# Udagram-Frontend App Boostrap By

# Prerequisites
You should have the following tools installed in your local machine:
* Git
* Node.js
* Ionic CLI
* Docker
* AWS CLI
* kubectl

### Instructions
Install [Git](https://git-scm.com/downloads) for your corresponding operating system.

## Node.js
### Instructions
Install Node.js using [these instructions](https://nodejs.org/en/download/). We recommend a version between 12.14 and 14.15.

This installer will install Node.js as well as NPM on your system. Node.js is used to run JavaScript-based applications and NPM is a package manager used to handle dependencies.

### Verify Installation
```bash
# v12.14 or greater up to v14.15
node -v
```

```bash
# v7.19 or greater
npm -v
```

## Ionic CLI
Ionic Framework is used to make cross-platform applications using JavaScript. It is used to help build and run Udagram.

### Instructions
Use [these instructions](https://ionicframework.com/docs/installation/cli) to install Ionic Framework with `npm`.

#### Verify Installation
```bash
# v6.0 or higher
ionic --version
```

## Docker
Docker is needed to build and run containerized applications.

### Instructions
Follow the instructions for [Docker Desktop](https://docs.docker.com/desktop/#download-and-install) to install Docker.

### Download Dependencies
Download all the package dependencies by running the following command from the `/project/udagram-frontend/` directory:
```bash
npm install .
```

### Build and Run the Project
```bash
ionic build
ionic serve
```
> Note: If you don't have Ionic CLI installed already, revisit the prerequisites in the previous section for setup instructions.

### Verification
Visit `http://localhost:8100` in your web browser to verify that the application is running. You should see a web interface.
