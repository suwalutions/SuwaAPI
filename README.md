# SuwaAPI Service

This project provides a ready-to-use development environment for quickly setting up and building API services using FastAPI. It simplifies the initial setup process, allowing developers to focus on writing and testing API endpoints without needing to configure the environment from scratch.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

## Installation

Follow these steps to set up the development environment:

1. Clone the repository:
    ```bash
    git clone https://github.com/suwalutions/SuwaAPI.git
    cd SuwaAPI
    ```

2. Grant execution permission to [`run.sh`](run.sh):
    ```bash
    chmod +x run.sh
    ```

3. Grant read permission to [`requirements.txt`](requirements.txt):
    ```bash
    chmod +r requirements.txt
    ```

4. Grant read-write-execute permission to the [`app/`](app/) directory:
    ```bash
    chmod -R 777 app/
    ```

5. Start the services with Docker Compose:
    ```bash
    docker-compose up -d
    ```

## Usage

Once the development environment is set up, follow these steps to start writing your API service:

1. **Write Your Services**  
   Implement your API services by adding the necessary code to the [`app`](app/) directory. This directory will contain your Python files that define the API logic.

2. **Code Structure**  
   - Place your main FastAPI app in a file, for example [`main.py`](app/main.py), inside the [`app`](app/) directory.
   - Define routes and API logic inside this or other Python files within [`app`](app/) to organize your project effectively.

   Example structure:
   ```
   /app
   ├── main.py        # FastAPI application setup
   ├── models.py      # Database models (if applicable)
   ├── services.py    # Business logic
   └── api/           # Directory for route handlers (optional)
   ```

3. **Add Dependencies**  
   If you need additional Python packages, add them to the [`requirements`](requirements.txt) file. This file contains the dependencies for your FastAPI project.

4. **Run the Service**  
   Once your code is written, the service can be run using Docker Compose (assuming you've already followed the installation steps). To start the FastAPI service, use the following command:
   ```bash
   docker-compose up -d
   ```

5. **Access the Service**  
   The FastAPI service will be available at `http://localhost:${SERVICE_PORT}`. You can set the `SERVICE_PORT` in your [`.env`](.env) file or environment settings.
   
   The automatically generated documentation for your API is available at:
   - Swagger UI: `http://localhost:${SERVICE_PORT}/docs`
   - ReDoc UI: `http://localhost:${SERVICE_PORT}/redoc`

6. **Stop the Service**  
   To stop the service, use:
   ```bash
   docker-compose down
   ```

## License

This project is licensed under the terms specified in the [`LICENSE`](LICENSE.txt) file.
