from deploy.server_builder import ServerBuilder 
import logging

if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO, filename='deploy/server.log', filemode='w')
    server = ServerBuilder()
    server.run()