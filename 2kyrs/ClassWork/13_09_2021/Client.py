class Client:

    # def __init__(self, name, number_phone, location):
    #     self.name = name
    #     self.number_phone = number_phone
    #     self.location = location

    def get_name(self):
        name = input('Имя пользователя\t')
        return name

    def get_number_phone(self):
        number_phone = input('Номер телефона пользователя\t')
        return number_phone

    def get_location(self):
        location = input('Место подачи\t')
        return location
