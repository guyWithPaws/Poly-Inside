from aiogram import Router
from aiogram.filters import Command, CommandStart
from aiogram.types import Message

handler_router = Router()


@handler_router.message(CommandStart())
async def command_start(message: Message):
    text_on_start_command = 'Добро пожаловать в PolyInside!'
    await message.answer(text_on_start_command)


@handler_router.message(Command(commands=['info']))
async def command_info(message: Message):
    await message.answer('Information')

@handler_router.message(Command(commands=['bug']))
async def command_user_profile(message: Message):
    await message.answer('Please take a bug photo and upload it')
