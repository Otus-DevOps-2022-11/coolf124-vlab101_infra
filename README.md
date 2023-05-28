#DZ 9 terraform
Создан ресурс типа yandex_vpc_network
Разделен образ приложения в packer на 2 файла -app.json и db.json
Проверено разделение файла Main.tf на 2 файла - app.tf и db.tf
Выделен в отдельный файл vpc.tf конфигурация сети
Добавлены в outputs конфигурации провайдеров
Созданы отдельные модули modules/db modules/app и скопированы туда файлы variables.tf app.tf db.tf outputs.tf
Файл main.tf отредактиварон на использование модулей
Отредактирован outputs.tf  чтобы ссылаться на переменные через модули
    output "external_ip_address_app" {
    value = module.app.external_ip_address_app
    }
    output "external_ip_address_db" {
    value = module.db.external_ip_address_db
    }
Созданы отдельные подпапки для main и stage , скопированоы туда файлы проекта
Выполнено задание с * - настроено использование  backend.tf s3 bucket yandex_vpc_network
    Для использования блокировок настроено YDB yandex
Выполнено задание с * - настроено использование  provisioner.
    Реализоване отключение provisioner через вынос их в отдельный объект типа null_resource и использование count и переменной. Если значение переменной равно 0, provisioner не используются, тк null_resource не создается.
    Не получилось проверить использование параметра DATABASE_URL при старте , почему то puma.service не подхватывает его через окружение
