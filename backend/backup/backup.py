import docker
import logging

class Backup:
    def __init__():
        self.path = '/path/to/linux/server'
        self.number_of_copy = 5
        ...
    
    def connect_to_docker(self):
        ...

    def copy_file_from_docker(self):
        ...

    def run(self):
        ...
    
if __name__== "__main__":
    backup = Backup()
    backup.run()