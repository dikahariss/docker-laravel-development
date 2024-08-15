## Docker Build

```bash
docker compose up -d --build
```

Cek hasil: http://localhost:8080

### Install Laravel
untuk mamang yang belum install php dan composer di local developmentnya bisa memanfaatkan composer dan php yang sudah terintall di docker untuk install laravelnya.

```bash
rm -rf src && docker compose run --rm composer create-project laravel/laravel .
```

mengaktifkan symlink

```bash
docker compose run --rm artisan storage:link
```

ubah permission folder src
```bash
sudo chown -R $USER:$USER src
```

## Restart Service Container
```bash
docker compose down && docker compose up -d --build
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
docker compose run --rm artisan migrate
```

## Mematikan Service Container

```bash
docker compose down
```

## Menjalankan Service Lainnya

```bash
#Contoh menjalankan composer
docker compose run --rm composer update

#Contoh menjalankan npm
docker compose run --rm npm run dev

#Contoh menjalankan artisan
docker compose run --rm artisan storage:link
```
