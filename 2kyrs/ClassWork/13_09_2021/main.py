import json

from Client import Client as cl
from Apps import Apps as ap
from Driver import Driver as dr
from Company import Company as cp

name, number_phone, location, cost, driver_name, driver_number_phone, car, model_car, account = [None] * 9


def add(db, name, number_phone, location, cost, driver_name, driver_number_phone, car, model_car, account):

    client_name = cl.get_name(name)
    client_number_phone = cl.get_number_phone(number_phone)
    location = cl.get_location(location)
    cost = ap.cost_of_trip(cost)
    driver_name = dr.name(driver_name)
    driver_number_phone = dr.number_phone(driver_number_phone)
    car = dr.car(car)
    model_car = dr.model_car(model_car)
    account = cp.set_account(account)

    db.get('db').get('clients').append({
        'client name' : f'{client_name}',
        'number phone' : f'{client_number_phone}',
        'location' : f'{location}'
    })
    db.get('db').get('Apps').append({'client name': f'{client_name}', 'cost of trip': f'{cost}'})
    db.get('db').get('Bank').append({'client name': f'{client_name}', 'cost': f'{cost}'})
    db.get('db').get('Driver').append({
        'client name': f'{client_name}',
        'driver name': f'{driver_name}',
        'number phone': f'{driver_number_phone}',
        'car': f'{car}',
        'model car': f'{model_car}'
    })
    db.get('db').get('Company').append({'client name': f'{client_name}', 'account': f'{account}'})

    with open('db.json', 'w', encoding='utf-8') as f:
        json.dump(db, f, ensure_ascii=False)


a = int(input('\n'
              '--------------------\n'
              ' 0 - Добавить пользователя  \n'
              ' 1 - Закончить \n'
              ' 2 - Поиск клиента\n'
              '--------------------\n\n'))


while a == 0:
    try:
        f = open('db.json')
        f.close()
        with open('db.json', 'r', encoding='utf-8') as f:
            db_new = json.load(f)
        add(db_new, name, number_phone, location, cost, driver_name, driver_number_phone, car, model_car, account)
        a = int(input('\n'
                      '--------------------\n'
                      ' 0 - Добавить пользователя  \n'
                      ' 1 - Закончить \n'
                      ' 2 - Поиск клиента\n'
                      '--------------------\n\n'))

    except FileNotFoundError:
        db = {
            'db': {
                'clients': [
                ],
                'Apps': [
                ],
                'Bank': [
                ],
                'Driver': [
                ],
                'Company': [
                ]
            }
        }

        add(db, name, number_phone, location, cost, driver_name, driver_number_phone, car, model_car, account)
        a = int(input('\n'
                      '--------------------\n'
                      ' 0 - Добавить пользователя  \n'
                      ' 1 - Закончить \n'
                      ' 2 - Поиск клиента\n'
                      '--------------------\n\n'))


while a == 2:
    try:
        f = open('db.json')
        f.close()
        with open('db.json', 'r', encoding='utf-8') as f:
            db = json.load(f)
        find_list = []
        word = input('Имя клиента\t')
        lst = ['clients', 'Apps', 'Bank', 'Driver', 'Company']
        for j in lst:
            clients_list = db.get('db').get(f'{j}')
            for i in clients_list:
                if i.get('client name') == word:
                    find_list.append(i)
        if find_list == []:
            print('Таких клиентов нет')
        else:
            print(find_list)
        a = int(input('\n'
                      '--------------------\n'
                      ' 0 - Добавить пользователя  \n'
                      ' 1 - Закончить \n'
                      ' 2 - Поиск клиента\n'
                      '--------------------\n\n'))

    except FileNotFoundError:
        print('База данных пуста, пожалуйста, заполните ее')

        db = {
            'db': {
                'clients': [
                ],
                'Apps': [
                ],
                'Bank': [
                ],
                'Driver': [
                ],
                'Company': [
                ]
            }
        }

        add(db, name, number_phone, location, cost, driver_name, driver_number_phone, car, model_car, account)
        a = int(input('\n'
                      '--------------------\n'
                      ' 0 - Добавить пользователя  \n'
                      ' 1 - Закончить \n'
                      ' 2 - Поиск клиента\n'
                      '--------------------\n\n'))
