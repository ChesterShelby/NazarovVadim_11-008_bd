import json

from Client import Client as cl
from Apps import Apps as ap
from Driver import Driver as dr
from Company import Company as cp

name, number_phone, location, cost, driver_name, driver_number_phone, car, model_car, account = \
    None, None, None, None, None, None, None, None, None


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
    db.get('db').get('Bank').append({'cost': f'{cost}'})
    db.get('db').get('Driver').append({
        'driver name': f'{driver_name}',
        'number phone': f'{driver_number_phone}',
        'car': f'{car}',
        'model car': f'{model_car}'
    })
    db.get('db').get('Company').append({'account': f'{account}'})

    with open('db.json', 'w', encoding='utf-8') as f:
        json.dump(db, f, ensure_ascii=False)


a = 0

while a == 0:
    try:
        f = open('db.json')
        f.close()
        with open('db.json', 'r', encoding='utf-8') as f:
            db_new = json.load(f)
        add(db_new, name, number_phone, location, cost, driver_name, driver_number_phone, car, model_car, account)
        with open('db.json', 'r', encoding='utf-8') as f:
            for i in f:
                print(i)
        a = int(input('Добавить еще пользователя 0 \n 1 - закончить \n'))
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
        a = int(input('Добавить еще пользователя 0 \n 1 - закончить \n'))
