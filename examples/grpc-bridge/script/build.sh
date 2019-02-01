cd $(dirname $0)/..

opt=${1}
if [ $opt == 'up' ]; then
    docker-compose -p backend -f docker-compose.backend.yml up -d --build
    docker-compose -f docker-compose.front.yml up -d --build
elif [ $opt == 'down' ]; then
    docker-compose -f docker-compose.front.yml down
    docker-compose -p backend -f docker-compose.backend.yml down
else 
    exit 1
fi
