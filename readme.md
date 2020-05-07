## Docker Build

```bash 
sudo docker-compose up -d --build
```

Cek hasil: http://localhost:8080 


## Install Laravel

```bash
sudo rm -rf src && sudo docker-compose run --rm composer create-project laravel/laravel .
```

### Menjalankan Artisan Migrate

Sesuaikan pengaturan di `.env`

```dotenv
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=homestead
DB_USERNAME=homestead
DB_PASSWORD=secret
```

Menjalankan artisan migrate

```bash
sudo docker-compose run --rm artisan migrate
```

## Mematikan Container

```bash
sudo docker-compose down
```
