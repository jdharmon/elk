# ELK Stack + Logspout

Build:
```
docker-compose build
docker-compose push
```
Deploy:
```
docker stack deploy -c docker-compose.yml elk
```

*NOTE:* If running on Docker Playground, you'll need to set vm.max_map_count by running before deploy:
```
pwd/set-maxmapcount.sh manager{1..3} worker{1..2}
```
