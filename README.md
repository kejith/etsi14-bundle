# KEEQuant - ETSI GS QKD 014 - Client Master Demo

This is a demo application that showcases the use of KEEQuant, a quantum key distribution (QKD) protocol, based on the ETSI GS QKD 014 standard. 

To get started with the demo, follow these steps:

1. Clone the repository:

    ```
    git clone https://github.com/kejith/etsi14-bundle.git
    ```

2. Initialize the submodule:

    ```
    git submodule update --init
    ```

3. Run the application using Docker Compose:

    ```
    docker-compose up
    ```

This will start the demo application and you can access it by visiting http://localhost/ in your web browser. A live demo is available on http://178.254.28.176/ 

## Environment Variables

The following environment variable is used in the demo application:

- `PORT`: The port number to run the application on. Example usage: `PORT=9000`.
