from pymongo import MongoClient

# Requires the PyMongo package.
# https://api.mongodb.com/python/current


##############################################  RETO 2  ###################################################

#   Usando las colecciones comments y users, se requiere conocer 
#   el correo y contraseña de cada persona que realizó un comentario. 
#   Construye un pipeline que genere como resultado estos datos.

###########################################################################################################



client = MongoClient('mongodb+srv://*********:*********@clusterana.usdti.mongodb.net/test?authSource=admin&replicaSet=atlas-lapozq-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
result = client['sample_mflix']['users'].aggregate([
    {
        '$lookup': {
            'from': 'comments', 
            'localField': 'email', 
            'foreignField': 'email', 
            'as': 'comentarios'
        }
    }, {
        '$addFields': {
            'numero_comentarios': {
                '$size': '$comentarios'
            }
        }
    }, {
        '$match': {
            'numero_comentarios': {
                '$gte': 1
            }
        }
    }, {
        '$project': {
            'name': 1, 
            'email': 1, 
            '_id': 0
        }
    }
])



