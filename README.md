Speed comparison between main to JSON serializers:
====

|               |Time per request by AB|Views rendering|AR calls|
| ------------- |:--------------------:|:-------------:|:------:|
| #to_json      | 316.030ms            | 267.5ms       | 3.7ms  |
| [jBuilder](https://github.com/rails/jbuilder)      | 131.864ms            | 117.8ms       | 4.1ms  |
| [AMS](https://github.com/rails-api/active_model_serializers)           | 127.770ms            | 102.7ms       | 3.6ms  |
| [AMS+PGE](https://github.com/dockyard/postgres_ext-serializers)       | 41.498ms             | 21.6ms        | 12.0ms |

### Testing info:
1000 posts, filled with fake data, had to be rendered to JSON with no date-time conversions. #to_json is the slowest probably because it had to serialize dates and times, so it's present there just for info. All other serializers had to render the same template.
