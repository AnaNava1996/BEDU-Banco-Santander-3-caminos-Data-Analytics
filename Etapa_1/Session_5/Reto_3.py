from pymongo import MongoClient

# Requires the PyMongo package.
# https://api.mongodb.com/python/current


#################################################
#
#   Usando la colección sample_airbnb.listingsAndReviews, mediante el uso 
#   de agregaciones, encontrar el número de publicaciones que tienen 
#   conexión a Internet, sea desde Wifi o desde cable (Ethernet).
#
#################################################


client = MongoClient('mongodb+srv://banana:mgchcjmglml@clusterana.usdti.mongodb.net/test?authSource=admin&replicaSet=atlas-lapozq-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
result = client['sample_airbnb']['listingsAndReviews'].aggregate([
    {
        '$match': {
            'amenities': {
                '$in': [
                    re.compile(r"wifi(?i)"), re.compile(r"ethernet(?i)")
                ]
            }
        }
    }, {
        '$group': {
            '_id': None, 
            'total': {
                '$sum': 1
            }
        }
    }, {
        '$project': {
            '_id': 0
        }
    }
])
