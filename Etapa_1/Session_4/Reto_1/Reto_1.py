# Requires the PyMongo package.
# https://api.mongodb.com/python/current



#################    Fecha, nombre y texto de cada comentario.    ##############
filter={}
project={
    'name': 1, 
    'date': 1, 
    'text': 1, 
    '_id': 0
}

result = client['sample_mflix']['comments'].find(
  filter=filter,
  projection=project
)

#################    Título, elenco y año de cada película    ##################

filter={}
project={
    'title': 1, 
    'cast': 1, 
    'year': 1, 
    '_id': 0
}

result = client['sample_mflix']['movies'].find(
  filter=filter,
  projection=project
)


#################    Nombre y contraseña de cada usuario.    ###################

filter={}
project={
    'name': 1, 
    'password': 1, 
    '_id': 0
}

result = client['sample_mflix']['users'].find(
  filter=filter,
  projection=project
)

