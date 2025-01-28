import requests
import time
from typing import NoReturn, AnyStr, List, Any
from LxmlSoup import LxmlSoup
import logging


class GithubParser:
    def __init__(self) -> NoReturn:
        self.url = 'https://github.com/guyWithPaws/Poly-Inside'
        self.current_commit = 0
        self.track_changes()
    
    def parse_webpage(self) -> LxmlSoup:
        logging.info('[GithubParser]: Trying parse webpage')
        try:
            html = requests.get(self.url).text
            logging.info('[GithubParser]: Get html document')
        except Exception as e:
            logging.error(e)

        soup = LxmlSoup(html)
        return soup

    def track_changes(self) -> bool:
        logging.info('[GithubParser]: Track changes')
        soup = self.parse_webpage()
        data = soup.find_all('span', class_='fgColor-default')

        commit = data[0].text().split()[0]
        logging.info(f'[GithubParser]: Commits: {commit}')
        if (commit != self.current_commit):
            self.current_commit = commit
            return True
        return False

