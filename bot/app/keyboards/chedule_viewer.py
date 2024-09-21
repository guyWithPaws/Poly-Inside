from aiogram.filters.callback_data import CallbackData
from aiogram.utils.keyboard import InlineKeyboardBuilder, InlineKeyboardButton


class Pagination(CallbackData, prefix='pagination'):
    action: str
    page: int


def paginator(page: int = 0):
    builder = InlineKeyboardBuilder()
    builder.row(
        InlineKeyboardButton(text='⏪', callback_data=Pagination(action='back', page=page).pack()),
        InlineKeyboardButton(text='✉Главное меню', callback_data='menu'),
        InlineKeyboardButton(text='⏩', callback_data=Pagination(action='forward', page=page).pack()),
        width=3
    )
    return builder.as_markup()
