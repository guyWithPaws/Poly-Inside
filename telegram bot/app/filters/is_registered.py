from aiogram.filters import BaseFilter
from aiogram.types import Message

from app.data.database.requests import get_users_ids
from app.keyboards.keyboard import welcome


class IsRegistered(BaseFilter):
    async def __call__(self, message: Message):
        if message.from_user.id in await get_users_ids():
            return True
        else:
            await message.answer('Ууупссс!\nКажется, вы не зарегистрированы...\nЭто надо срочно исправить!',
                                 reply_markup=welcome)
