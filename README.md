Speed comparison between main to JSON serializers:
====

### to_json
```
IndexTest#test_posts_index (202 ms warmup)
           wall_time: 826 ms
              memory: 0 Bytes
        process_time: 1.47 sec
Completed 200 OK in 725ms (Views: 0.5ms | ActiveRecord: 4.1ms)
```

### JBUILDER:
```
IndexTest#test_posts_index (150 ms warmup)
           wall_time: 480 ms
              memory: 0 Bytes
        process_time: 900 ms
Completed 200 OK in 454ms (Views: 448.3ms | ActiveRecord: 4.2ms)
```

### AMS
```
IndexTest#test_posts_index (180 ms warmup)
           wall_time: 665 ms
              memory: 0 Bytes
        process_time: 870 ms
Completed 200 OK in 481ms (Views: 473.2ms | ActiveRecord: 5.9ms)
```

### AMS+PG
```
IndexTest#test_posts_index (61 ms warmup)
           wall_time: 37 ms
              memory: 0 Bytes
        process_time: 32 ms
Completed 200 OK in 49ms (Views: 19.8ms | ActiveRecord: 27.5ms)
```

### Testing info:
1000 posts, filled with fake data, had to be rendered to JSON with no date-time conversions.
