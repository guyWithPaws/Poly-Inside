from aiogram import Router, F
from aiogram.types import CallbackQuery

from app.data.database.requests import add_user, is_user_have_group
from app.data.text import greetings
from app.filters.is_registered import IsRegistered
from app.keyboards.chedule_viewer import Pagination, paginator
from app.keyboards.keyboard import menu, user_profile
from shedule.calendar_reader import CalendarReader

callback_router = Router()
callback_router.message.filter(IsRegistered())

calendar = CalendarReader()
events = calendar.get_calendar_events()


@callback_router.callback_query(F.data == 'registration')
async def do_registration(callback: CallbackQuery):
    await add_user(callback.from_user.id)
    await callback.message.answer(
        'Вы успешно зарегистрированы!\nДля использования бота выберите в списке команд - \menu')


@callback_router.callback_query(F.data == 'menu')
async def return_to_menu(callback: CallbackQuery):
    await callback.message.answer(greetings, reply_markup=menu)


@callback_router.callback_query(F.data == 'subscribe_to_newsletter')
async def get_newsletter(callback: CallbackQuery):
    await callback.message.answer('Вы подписаны на рассылку')


@callback_router.callback_query(F.data == 'user_profile')
async def see_user_profile(callback: CallbackQuery):
    await is_user_have_group(callback.message.from_user.id)
    await callback.message.answer('Профиль пользователя', reply_markup=user_profile)


@callback_router.callback_query(Pagination.filter(F.action.in_(['back', 'forward'])))
async def pagination_handler(call: CallbackQuery, callback_data: Pagination):
    page_num = int(callback_data.page)
    page = page_num - 1 if page_num > 0 else 0

    if callback_data.action == 'forward':
        page = page_num + 1

    current_datetime = list(events.keys())[page]
    text = f'Дата: {current_datetime}\n'
    for class_ in events[current_datetime]:
        text += (f'Название: {class_.title}\n'
                 f'Локация: {class_.location}\n'
                 f'Начало: {class_.start_time}\n'
                 f'Конец: {class_.end_time}\n'
                 f'\n')

    await call.message.edit_text(
        text,
        reply_markup=paginator(page)
    )


@callback_router.callback_query(F.data == 'see_schedule')
async def see_schedule(callback: CallbackQuery):
    current_datetime = list(events.keys())[0]
    text = f'Дата: {current_datetime}\n'
    for class_ in events[current_datetime]:
        text += (f'Название: {class_.title}\n'
                 f'Локация: {class_.location}\n'
                 f'Начало: {class_.start_time}\n'
                 f'Конец: {class_.end_time}\n'
                 f'\n')
    await callback.message.answer(text, reply_markup=paginator())


@callback_router.callback_query(F.data == 'edit_user_profile')
async def edit_user_profile(callback: CallbackQuery):
    await callback.message.answer('Редактирование профиля пользователя')
