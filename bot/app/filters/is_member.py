from typing import List

from aiogram.filters import BaseFilter
from aiogram.types import Message


class IsAdmin(BaseFilter):

    def __init__(self, user_id: int | List[int]) -> None:
        self.user_id = user_id

    async def __call__(self, message: Message):
        ...
