class Driver:

    # def __init__(self, name, number_phone, car, model_car):
    #     self.name = name
    #     self.number_phone = number_phone
    #     self.car = car
    #     self.model_car = model_car

    def name(self):
        name = input('Имя водителя\t')
        return name

    def number_phone(self):
        number_phone = input('Номер телефона водителя\t')
        return number_phone

    def car(self):
        car = input('Гос.номер машины\t')
        return car

    def model_car(self):
        model_car = input('Модель машины\t')
        return model_car
