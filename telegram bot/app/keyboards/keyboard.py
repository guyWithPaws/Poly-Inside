from aiogram.types import InlineKeyboardMarkup, InlineKeyboardButton, ReplyKeyboardMarkup, KeyboardButton
from aiogram.types.web_app_info import WebAppInfo


schedule_viewer = InlineKeyboardMarkup(inline_keyboard=[
    [InlineKeyboardButton(text='⏪', callback_data='back'),
     InlineKeyboardButton(text='✉Главное меню', callback_data='menu'),
     InlineKeyboardButton(text='⏩', callback_data='forward')]
])

welcome = InlineKeyboardMarkup(inline_keyboard=[
    [InlineKeyboardButton(text='Зарегистрироваться', callback_data='registration')]
])

menu = InlineKeyboardMarkup(inline_keyboard=[
    [InlineKeyboardButton(text='Профиль', callback_data='user_profile')],
    [InlineKeyboardButton(text='Посмотреть расписание', callback_data='see_schedule'),
    InlineKeyboardButton(text='Подписаться на рассылку', callback_data='subscribe_to_newsletter')]
])

user_profile = InlineKeyboardMarkup(inline_keyboard=[
    [InlineKeyboardButton(text='Вернуться в главное меню', callback_data='menu'),
     InlineKeyboardButton(text='Редактировать данные\nпрофиля', callback_data='edit_user_profile')]

])

registration = InlineKeyboardMarkup(inline_keyboard=[
    [InlineKeyboardButton(text='Согласен', callback_data='1'),
     InlineKeyboardButton(text='Не согласен', callback_data='2')]
])

web_app_test = ReplyKeyboardMarkup(keyboard=[
    [KeyboardButton(text='Open WebApp', web_app=WebAppInfo(url='https://luminarix.space'))]
], resize_keyboard=True)
