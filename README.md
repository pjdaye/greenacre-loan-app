# The Greenacre Loan Application

## Overview

The Greenacre Loan Application facilitates quick pre-approvals for home mortgages and serves as a reference for black box testing studies.

## Background

This application was the featured example for the following conference presentations:

* **Crafting Excellence: Optimizing Test Case Design with Domain Analysis** (STAREAST 2024)
  * Test data was scripted and test cases developed using Black Box testing techniques
* **Vision to Velocity: Accelerating Agile Testing with Generative AI** (Agile + DevOps USA 2024, updated for STAREAST 2025)
  * Test case generation was done using Generative AI
  * Added a [prompt library](./prompt-library/)

![Greenacre Loan Approval App](./docs/images/greenacre-desktop.png)

## Prerequisites

* **Option 1: Local Development**
  * Node.js (v22.x or higher)
  * npm (v10.x or higher)

* **Option 2: Docker (Recommended)**
  * Docker Desktop or Docker Engine
  * Docker Compose

## Installation

### Option 1: Local Development

1. Clone the repository
2. Install dependencies:
    * Client: ```cd client/greenacre-loans && npm install```
    * Server: ```cd server && npm install```
    * Test: ```cd test && npm install```

### Option 2: Docker Setup

No manual dependency installation required - everything is containerized!

## Quick Start

### Docker (Recommended)

#### Start Client and Server Only

```bash
docker compose -f docker-compose.client-server.yml up --build -d
```

* Client: <http://localhost:3000>
* Server: <http://localhost:8080>

#### Start All Services (Client, Server, Tests)

```bash
docker compose -f docker-compose.all.yml up --build -d
```

#### Stop Containers

```bash
docker compose -f docker-compose.client-server.yml down
# or
docker compose -f docker-compose.all.yml down
```

### Local Development

#### Client Application

* **Technology**: Next.js (React)
* **Location**: `client/greenacre-loans/`
* **Commands**:

  ```bash
  cd client/greenacre-loans
  npm run dev  # Development mode
  npm run build && npm start  # Production mode
  ```

* **URL**: <http://localhost:3000>

#### Server Application

* **Technology**: Express.js
* **Location**: `server/`
* **Commands**:

  ```bash
  cd server
  node index.js
  ```

* **URL**: <http://localhost:8080>

### Automated Tests

#### Docker

```bash
# Run tests in container
docker compose -f docker-compose.all.yml exec test npx playwright test --project chromium
```

#### Local

* **Framework**: Playwright (TypeScript)
* **Location**: `test/`
* **Commands**:

  ```bash
  cd test
  npx bddgen && npx playwright test
  ```

* **BDD Tests**: Tests are crafted using BDD principles with the playwright-bdd package. See the [Playwright-BDD Documentation](https://vitalets.github.io/playwright-bdd/#) for more details.

#### More Information

For a detailed guide on Playwright, visit [Playwright official site](https://playwright.dev/).

## Architecture

### Docker Architecture

* **Client Container**: Next.js application with API proxy routes
* **Server Container**: Express.js API server with loan processing logic
* **Test Container**: Playwright test runner with browser automation
* **Networking**: Containers communicate via Docker Compose service names

### API Communication

* **Local**: Client proxies API calls to `http://localhost:8080`
* **Docker**: Client proxies API calls to `http://server:8080` (service name)
* **Endpoints**:
  * `POST /api/apply` - Submit loan application
  * `GET /health` - Health check

## Application Structure

* **Requirements and UI Mockups**: Detailed documents can be found in the [Requirements](./docs/requirements/requirements.md) and [UI Mockups](./docs/requirements/ui-mockups.md).
* **Data and Utilities**: Includes scripts for test data generation and test validation.
* **Docker Files**:
  * `docker-compose.client-server.yml` - Client and server only
  * `docker-compose.all.yml` - All services including tests
  * Individual `Dockerfile`s in each service directory

## Future Work

* Refinement of the current proof of concept, including intentional bug insertion for testing education.
* Exploration into an AI-based testing oracle.
* Enhanced CI/CD pipeline with automated testing and deployment.

## Licensing

This project is licensed under the MIT license.
