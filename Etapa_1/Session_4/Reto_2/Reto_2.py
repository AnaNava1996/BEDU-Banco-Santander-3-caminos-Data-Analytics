from pymongo import MongoClient
# Requires the PyMongo package.
# https://api.mongodb.com/python/current


###############   ¿Qué comentarios ha hecho Greg Powell?                     ##################

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



###############   ¿Qué comentarios han hecho Greg Powell o Mercedes Tyler?   ##################

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


###############   ¿Cuál es el máximo número de comentarios en una película?  ##################

client = MongoClient('mongodb://localhost:27017/?readPreference=primary&appname=MongoDB%20Compass&ssl=false')
filter={}
project={
    'title': 1, 
    'num_mflix_comments': 1
}
sort=list({
    'num_mflix_comments': -1
}.items())
limit=1

result = client['sample_mflix']['movies'].find(
  filter=filter,
  projection=project,
  sort=sort,
  limit=limit
)



###############   ¿Cuál es título de las cinco películas más comentadas?     ##################

filter={}
project={
    'title': 1, 
    'num_mflix_comments': 1, 
    '_id': 0
}
sort=list({
    'num_mflix_comments': -1
}.items())
limit=5

result = client['sample_mflix']['movies'].find(
  filter=filter,
  projection=project,
  sort=sort,
  limit=limit
)

