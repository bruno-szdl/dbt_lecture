# ****Bootcamp3 Data Modeling with Postgres****

**Table of Contents**

- [Step 1: Clone the Repository](#step-1-clone-the-repository)
- [Step 2: Run Postgres Locally](#step-2-run-postgres-locally)
  - [Option 1: Run on Local Machine](#option-1-run-on-local-machine)
  - [Option 2: Run Postgres in Docker](#option-2-run-postgres-in-docker)
- [Step 3: Connect to Postgres](#step-3-connect-to-postgres)


## **Step 1: Clone the Repository**

Clone the **`bootcamp3`** repository, open your favorite IDE, and navigate to the **`data-modeling-postgres`** folder using the command line.

## **Step 2: Run Postgres Locally**

First, you must install Postgres locally, regardless of which option you choose below.
- For Mac: Follow [this tutorial](https://daily-dev-tips.com/posts/installing-postgresql-on-a-mac-with-homebrew/) (Homebrew is recommended).
- For Windows: Follow [this tutorial](https://www.sqlshack.com/how-to-install-postgresql-on-windows/).

### **Option 1: Run on Local Machine**

- Execute the data.dump file to set up Postgres tables
    
    ```bash
    psql -U <computer-username> postgres < data.dump
    ```
    
    → Replace **`<computer-username>`** with your computer's username.
    

### **Option 2: Run Postgres in Docker**

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Copy **`example.env`** to **`.env`** and update the values as needed
    
    > 💡 Note the **`CONTAINER_PORT`** is intentionally mapped to **`5434`** instead of 5432.
    > 
3. Start the Docker Compose container
    
    ```bash
    docker compose up -d
    
    # Short-cut if you're on Mac/Linux and have Make:
    make up
    ```
    
    > 💡 Check for a new folder, postgres-data, at the root directory. This folder stores data for your Postgres instance.
    > 
4. Stop the Docker containers when finished
    
    ```bash
    docker compose down -v
    
    # Short-cut if you're on Mac/Linux and have Make:
    make down
    ```
    

## **Step 3: Connect to Postgres**

- Use your preferred client (DataGrip, VSCode, PGAdmin, Postbird, etc.) to establish a new PostgreSQL connection.
    - Default username: **`postgres`** (corresponds to **`$POSTGRES_USER`** in **`.env`**).
    - Default password: **`postgres`** (corresponds to **`$POSTGRES_PASSWORD`** in **`.env`**).
    - Default database: **`postgres`** (corresponds to **`$POSTGRES_DB`** in **`.env`**).
    - Default host: **`localhost`** or **`0.0.0.0`** (IP address of the Docker container).
    - Default port: **`5434`** (corresponds to **`$CONTAINER_PORT`** in **`.env`**).

> 💡 Edit these values by modifying the corresponding values in .env.
> 

If the test connection is successful, click "Finish" or "Save" to save the connection. Now, you can use the database client to manage your PostgreSQL database locally.

--------------------

_As of the time of writing this README, you should see the following tables:_

<img width="287" alt="image" src="https://github.com/DataEngineer-io/bootcamp3/assets/108765043/ce61de9c-a2f9-4c30-af58-c3d38836f172">
