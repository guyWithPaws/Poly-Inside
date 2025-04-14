from aiogram import Router, F
from aiogram.types import CallbackQuery

callback_router = Router()


@callback_router.callback_query(F.data == 'bug')
async def report_bug(callback: CallbackQuery):
    await callback.message.answer('Bug report is successfully uploaded!')
