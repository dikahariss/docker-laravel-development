## Docker Build

```bash 
sudo docker-compose up -d --build
```

Cek hasil: http://localhost:8080 


## Install Laravel

Install laravel terbaru.
 
```bash
rm -rf src && composer create-project laravel/laravel src
```

atau install laravel versi 6
```bash
rm -rf src && composer create-project laravel/laravel src "6.*"
```

## Restart Service Container
```bash
sudo docker-compose down && sudo docker-compose up -d --build
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

## Mematikan Service Container

```bash
sudo docker-compose down
```

## Menjalankan Service Lainnya
```bash
#Contoh menjalankan composer
sudo docker-compose run --rm composer update

#Contoh menjalankan npm
sudo docker-compose run --rm npm run dev

#Contoh menjalankan artisan
sudo docker-compose run --rm artisan storage:link

```
