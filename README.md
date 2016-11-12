
## docker-compose.yml sample

```
version: '2'
services:
  php-smarty:
    build: php-smarty
    ports:
      - 8080:80
    volumes:
      - ./admin/www:/var/www
```
