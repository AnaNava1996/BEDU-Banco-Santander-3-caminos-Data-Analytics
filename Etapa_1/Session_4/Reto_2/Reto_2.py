from pymongo import MongoClient
# Requires the PyMongo package.
# https://api.mongodb.com/python/current


##############   ¿Qué comentarios ha hecho Greg Powell?                     ##################

client = MongoClient('mongodb+srv://bananapassword:bananapassword@clusterana.usdti.mongodb.net/test?authSource=admin&replicaSet=atlas-lapozq-shard-0&connectTimeoutMS=600000&socketTimeoutMS=6000000&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={
    'name': 'Greg Powell'
}
project={
    'text': 1, 
    '_id': 0
}

result = client['sample_mflix']['comments'].find(
  filter=filter,
  projection=project
)



##############   ¿Qué comentarios han hecho Greg Powell o Mercedes Tyler?   ##################

client = MongoClient('mongodb+srv://bananapassword:bananapassword@clusterana.usdti.mongodb.net/test?authSource=admin&replicaSet=atlas-lapozq-shard-0&connectTimeoutMS=600000&socketTimeoutMS=6000000&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={
    '$or': [
        {
            'name': 'Greg Powell'
        }, {
            'name': 'Mercedes Tyler'
        }
    ]
}
project={
    'name': 1, 
    'text': 1, 
    '_id': 0
}

result = client['sample_mflix']['comments'].find(
  filter=filter,
  projection=project
)


##############   ¿Cuál es el máximo número de comentarios en una película?  ##################
##############   ¿Cuál es título de las cinco películas más comentadas?     ##################
