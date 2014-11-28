Speed comparison between main to JSON serializers:
====

### Object to JSON
Time per request: 316.030ms
Views: 267.5ms
ActiveRecord: 3.7ms

### AMS
Time per request: 127.770ms
Views: 102.7ms
ActiveRecord: 3.6ms

### AMS-PG
Time per request: 41.498ms
Views: 5.2ms
ActiveRecord: 21.6ms

### jBuilder
Time per request: 131.864ms
Views: 117.8ms
ActiveRecord: 4.1ms

|               |Time per request by AB|Views rendering|AR calls|
| ------------- |:--------------------:|:-------------:|:------:|
| #to_json      | 316.030ms            | 267.5ms       | 3.7ms  |
| [jBuilder](https://github.com/rails/jbuilder)      | 131.864ms            | 117.8ms       | 4.1ms  |
| [AMS](https://github.com/rails-api/active_model_serializers)           | 127.770ms            | 102.7ms       | 3.6ms  |
| [AMS+PGE](https://github.com/dockyard/postgres_ext-serializers)       | 41.498ms             | 21.6ms        | 12.0ms |
