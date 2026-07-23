# Local Testing

For local development and testing, you can use Docker to run the Jekyll site without installing Ruby and Jekyll on your system.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your system
- [Docker Compose](https://docs.docker.com/compose/install/) (usually included with Docker Desktop)

## Quick Start

1. **Start the Jekyll server:**

   ```bash
   docker-compose up
   ```

2. **View the site:**
   Open your browser and navigate to `http://localhost:4000`

3. **Stop the server:**
   Press `Ctrl+C` in the terminal, or run:

   ```bash
   docker-compose down
   ```

## Development Workflow

The Docker setup includes:

- **Live reload**: Changes to files are automatically reflected in the browser
- **Volume mounting**: Your local files are synced with the container
- **Persistent bundle cache**: Gem dependencies are cached for faster rebuilds

## Rebuilding the Docker Image

If you modify the `Dockerfile` or need to update dependencies:

```bash
docker-compose up --build
```

## Running Jekyll Commands

To run Jekyll commands directly:

```bash
docker-compose run jekyll jekyll <command>
```

For example, to build the site without serving:

```bash
docker-compose run jekyll jekyll build
```
