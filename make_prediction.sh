#!/usr/bin/env bash

PORT=8080
echo "Port: $PORT"

# POST method predict
curl -d '{"Survived":{"0":0,"1":1,"2":1,"3":1,"4":0},

        "Pclass":{"0":3,"1":1,"2":3,"3":1,"4":3},
        
        "Sex":{"0":0,"1":1,"2":1,"3":1,"4":0},
        
        "Age":{"0":22.0,"1":38.0,"2":26.0,"3":35.0,"4":35.0},
        
        "SibSp":{"0":1,"1":1,"2":0,"3":1,"4":0},
        
        "Fare":{"0":7.25,"1":71.2833,"2":7.925,"3":53.1,"4":8.05},
        
        "Embarked":{"0":0,"1":1,"2":0,"3":0,"4":0}
        
}'\
     -H "Content-Type: application/json" \
     -X POST http://localhost:$PORT/predict