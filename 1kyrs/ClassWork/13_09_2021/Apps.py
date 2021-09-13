import random
from Client import Client as cl


class Apps:

    def client(self):
        client_name = cl.get_name
        return client_name

    def cost_of_trip(self):
        cost = random.randint(40, 400)
        return cost

