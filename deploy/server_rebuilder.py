import requests
from bs4 import BeautifulSoup
import os
import time
from typing import NoReturn, AnyStr

class ServerRunner:
    def __init__(self):
        self.test = 10



class GithubParser:
    def __init__(self, url: str) -> NoReturn:
        self.url = url
        self.filename = 'saved_html.txt'

    def download_webpage(self) -> str:
        responce = requests.get(self.url)
        responce.raise_for_status()
        return responce.text
    
    def parse_webpage(self) -> BeautifulSoup:
        soup = BeautifulSoup(html, 'html.parser')
        return soup

    def store_web_page(self, html: str) -> NoReturn:
        with open(self.filename, 'w', encoding='utf-8') as file:
            file.write(html)
    
    def load_stored_page(self) -> AnyStr:
        with open(self.filename, 'r', encoding='utf-8') as file:
            return file.read()

    def track_changes(self) -> NoReturn:
        html = self.download_webpage()
        if os.path.exists(self.filename):
            stored_html = self.load_stored_page()
            if html != stored_html:
                print('Changes detected')
        self.store_web_page(html)


if __name__ == '__main__':
    parser = GithubParser('https://github.com/guyWithPaws/Poly-Inside')
    while True:
        parser.track_changes()
        time.sleep(10)


