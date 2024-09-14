from aiogram import Router, types
from aiogram.filters import Command, CommandStart
from aiogram.types import Message

from app.data.text import greetings
from app.filters.is_registered import IsRegistered
from app.keyboards.keyboard import menu, user_profile, web_app_test

handler_router = Router()
handler_router.message.filter(IsRegistered())


@handler_router.message(CommandStart())
async def command_start(message: Message):
    await message.answer(greetings, reply_markup=web_app_test)
    photos = await message.from_user.get_profile_photos()
    for photo in photos.photos:
        print(photo)



@handler_router.message(Command(commands=['menu']))
async def command_start(message: Message):
    # photos = await message.from_user.get_profile_photos()
    # for photo in photos.photos:
    #     photo[-1].download(destination_file="app/handlers/test.jpeg")
    # await message.answer(greetings, reply_markup=menu)
    user_id = message.from_user.id
    photos = await message.bot.get_user_profile_photos(user_id)
    if photos.total_count > 0:
        file_id = photos.photos[0][0].file_id
        await message.bot.send_photo(message.chat.id, file_id)
    else:
        await message.bot.send_message(message.chat.id, 'You have no profile photo')

@handler_router.message(Command(commands=['get_photo']))
async def get_photo(message: types.Message):
    keyboard = types.ReplyKeyboardMarkup(resize_keyboard=True)
    keyboard.add(types.KeyboardButton("Share Contact", request_contact=True))
    await message.answer("Чтобы я мог увидеть ваше фото профиля, пожалуйста, поделитесь со мной вашим контактом", reply_markup=keyboard)

@handler_router.contact()
async def get_contact(contact: types.Contact):
    user_id = contact.user_id
    photos = await contact.bot.get_user_profile_photos(user_id)
    if photos.total_count > 0:
        file_id = photos.photos[0][0].file_id
        await contact.answer_photo(file_id)
    else:
        await contact.answer("У вас нет фото профиля")
@handler_router.message(Command(commands=['profile']))
async def command_user_profile(message: Message):
    await message.answer('-----------', reply_markup=user_profile)
