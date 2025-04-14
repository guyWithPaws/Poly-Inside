import asyncio

from aiogram import Bot, Dispatcher

from app.callbacks.callback import callback_router
from app.data.config import TOKEN
from app.handlers.handlers import handler_router


async def main():
    bot = Bot(TOKEN)
    dp = Dispatcher()
    dp.include_routers(callback_router, handler_router)
    await bot.delete_webhook(drop_pending_updates=True)
    await dp.start_polling(bot)



if __name__ == '__main__':
    try:
        print("[Bot]: Bot is running!")
        asyncio.run(main())
    except Exception as e:
        print(f'[Bot]: Error while running bot {e}')
    except KeyboardInterrupt:
        print("[Bot]: Exit!")
