import asyncio
import argparse
import os
import sys

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from aiogram import Bot, Dispatcher

from app.callbacks.callback import callback_router
from app.data.config import TOKEN
from app.handlers.handlers import handler_router


async def main(lifetime: int | None = None):
    bot = Bot(TOKEN)
    dp = Dispatcher()
    dp.include_routers(callback_router, handler_router)
    await bot.delete_webhook(drop_pending_updates=True)

    polling = asyncio.create_task(dp.start_polling(bot))

    if lifetime:
        print(f"[Bot]: Running in limited mode for {lifetime} seconds...")
        await asyncio.sleep(lifetime)
        polling.cancel()
        print("[Bot]: Time's up. Shutting down...")
    else:
        print("[Bot]: Running in normal mode.")
        await polling


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Run the bot.")
    parser.add_argument('--lifetime', type=int, help='How many seconds to run the bot before shutdown')
    args = parser.parse_args()

    try:
        asyncio.run(main(args.lifetime))
    except Exception as e:
        print(f'[Bot]: Error while running bot {e}')
    except KeyboardInterrupt:
        print("[Bot]: Exit!")
