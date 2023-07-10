# Visitor API

This repository contains the backend code for the Visitor API, which is used to manage user data for a mobile application. The API is built using Prisma, Next.js, and trpc, and it uses a MySQL database to store user information.

## Table of Contents

- [Visitor API](#visitor-api)
  - [Table of Contents](#table-of-contents)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [API Specifications](#api-specifications)
    - [Create User](#create-user)
    - [Get a list of all users](#get-a-list-of-all-users)
    - [Get a specific user by ID](#get-a-specific-user-by-id)
    - [Contributing](#contributing)

## Prerequisites

- Node.js (version 14 or later)
- MySQL (version 8.2.4 or later)

## Installation

1. Clone the repository:
   ```shell
   git clone https://github.com/JAW12/visitor-api.git
   ```
2. Navigate to the project directory:
   ```shell
   cd visitor-api
   ```
3. Install the dependencies
   ```shell
   npm install
   ```
4. Set up the MySQL database:
   - Create a new MySQL database.
   - Update the database configuration in .env file with your database credentials.
5. Run the database migration:
   ```shell
    npx prisma migrate dev --name init
   ```
6. Start the development server:
   ```shell
    npm run dev
   ```
7. The server should now be running at http://localhost:3000.

## API Specifications

The following endpoints are available in the API:

- `POST /api/users`: Create a new user.
- `GET /api/users`: Get a list of all users.
- `GET /api/users/:id`: Get a specific user by ID.

### Create User

- Endpoint: `/api/users`
- Method: `POST`
- Request Body:
  ```json
    {
    "VISITOR_NO": "string",
    "FULL_NAME": "string",
    "ID_CARD_NO": "string",
    "COMPANY_NAME": "string",
    "LICENSE_PLATE": "string",
    "PURPOSE": "string",
    "MEET_WITH": "string",
    "SELFIE_PHOTO_URL": "string",
    "ID_CARD_PHOTO_URL": "string"
    }
  ```
- Response:
  - `FULL_NAME`: string
  - `ID_CARD_NO`: string
  - `COMPANY_NAME`: string
  - `LICENSE_PLATE`: string
  - `PURPOSE`: string
  - `MEET_WITH`: string
  - `SELFIE_PHOTO_URL`: string
  - `ID_CARD_PHOTO_URL`: string

### Get a list of all users

- Endpoint: `/api/users`
- Method: `GET`
- Response: Array of user objects:
  ```json
  [
      {
          "USER_ID": 1,
          "VISITOR_NO": "string",
          "FULL_NAME": "string",
          "ID_CARD_NO": "string",
          "COMPANY_NAME": "string",
          "LICENSE_PLATE": "string",
          "PURPOSE": "string",
          "MEET_WITH": "string",
          "SELFIE_PHOTO_URL": "string",
          "ID_CARD_PHOTO_URL": "string",
          "CREATED_AT": "2023-07-10T12:34:56.789Z",
          "UPDATED_AT": "2023-07-10T12:34:56.789Z"
      },
      // More users...
  ]
  ```

### Get a specific user by ID

- Endpoint: `/api/users/?id={id}`
- Method: `GET`
- Path Parameter:
  - `id`: bigint(user ID)
- Response:
- ```json
    {
    "USER_ID": 1,
    "VISITOR_NO": "string",
    "FULL_NAME": "string",
    "ID_CARD_NO": "string",
    "COMPANY_NAME": "string",
    "LICENSE_PLATE": "string",
    "PURPOSE": "string",
    "MEET_WITH": "string",
    "SELFIE_PHOTO_URL": "string",
    "ID_CARD_PHOTO_URL": "string",
    "CREATED_AT": "2023-07-10T12:34:56.789Z",
    "UPDATED_AT": "2023-07-10T12:34:56.789Z"
    }
  ```

### Contributing

Contributions to this project are welcome. If you find any issues or have suggestions for improvement, please feel free to submit a pull request or open an issue.
