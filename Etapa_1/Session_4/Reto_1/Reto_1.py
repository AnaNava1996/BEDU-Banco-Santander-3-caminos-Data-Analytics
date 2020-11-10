# Requires the PyMongo package.
# https://api.mongodb.com/python/current



################    Fecha, nombre y texto de cada comentario.    ##############
client = MongoClient('mongodb+srv://bananapassword:bananapassword@clusterana.usdti.mongodb.net/test?authSource=admin&replicaSet=atlas-lapozq-shard-0&connectTimeoutMS=600000&socketTimeoutMS=6000000&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
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

################    Título, elenco y año de cada película    ##################

client = MongoClient('mongodb+srv://bananapassword:bananapassword@clusterana.usdti.mongodb.net/test?authSource=admin&replicaSet=atlas-lapozq-shard-0&connectTimeoutMS=600000&socketTimeoutMS=6000000&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
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


################    Nombre y contraseña de cada usuario.    ###################

client = MongoClient('mongodb+srv://bananapassword:bananapassword@clusterana.usdti.mongodb.net/test?authSource=admin&replicaSet=atlas-lapozq-shard-0&connectTimeoutMS=600000&socketTimeoutMS=6000000&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
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

