import logging
import subprocess
from time import sleep

from deploy.github_parser import GithubParser


class ServerBuilder:
    def __init__(self):
        self.parser = GithubParser()
        self.delay = 10
        self.first_launch()

    def first_launch(self):
        self.pull_project()
        self.run_docker()

        self.run()
    
    def stop_docker(self):
        subprocess.run(["docker", "compose", "stop"])

    def pull_project(self):
        logging.info('[Builder]: Git pull')
        subprocess.run(["git", "pull"])

    def run_docker(self):
        logging.info('[Builder]: Docker compose up --build')
        subprocess.run(["docker", "compose", "up", "--build"])

    def run(self):  
        while True:

            attempt = self.parser.track_changes()

            if attempt:
                self.pull_project()
                self.run_docker()

            sleep(self.delay)