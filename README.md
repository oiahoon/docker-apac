# docker-apac

## Usage:
1. add a .env file, key in your env variables:
```
...
SECRET_KEY_BASE=452ce83a8a41xxxxxx
RACK_ENV=production
RAILS_ENV=production
...
```
2. move your project folder into or config the path in 
- docker-compose.yml
  ```
  ...
  volumes:
      - ./path/to/project:/usr/src/app
  ...
  - ./path/top/project/public:/app/public
  ```
- Dockerfile
  > `ENV APP_PATH ./path/to/project`
  
3. `docker-compose build`
4. `docker-compose up|start`
