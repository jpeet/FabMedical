host="fabmedical-503881.mongo.cosmos.azure.com"
username="fabmedical-503881"
password="K6ys8uOuJrlaWcexVGuQvHJSmSadwNt94oMAIvpVfOWJ6Bs8wJgO7GXk9c5YOAN7JOws9xie27xttC76aSNUig=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
