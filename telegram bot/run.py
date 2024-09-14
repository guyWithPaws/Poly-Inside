import asyncio
import logging
from typing import NamedTuple

from datetime import datetime

from aiogram import Bot, Dispatcher

from app.callbacks.callback import callback_router
from app.data.config import TOKEN
from app.data.database.models import async_main_
from app.handlers.handlers import handler_router


async def main():
    await async_main_()

    bot = Bot(TOKEN)
    dp = Dispatcher()
    dp.include_routers(callback_router, handler_router)
    await bot.delete_webhook(drop_pending_updates=True)
    await dp.start_polling(bot)


if __name__ == '__main__':

    # # logging.basicConfig(level=logging.INFO, stream=sys.stdout)
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        print('Exit')
