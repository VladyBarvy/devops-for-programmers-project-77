### Hexlet tests and linter status:
[![Actions Status](https://github.com/VladyBarvy/devops-for-programmers-project-77/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/VladyBarvy/devops-for-programmers-project-77/actions)


## Минимальные требования для работы
- Ubuntu 22.04 или WSL2 (для Windows)
- Terraform версии >1.0
- Ansible версии >2.10
- Yandex Cloud
***
## Безопасность
Для секретных переменных (ключ доступа к Yandex Cloud, а также cloud_id и folder_id) нужно создать файл secrets.auto.tfvars.
Файл добавить в папку terraform. Также рекомендуется файл добавить в .gitignore.
Ключ доступа к Yandex Cloud необходимо закодировать при помощи Ansible Vault, сохранив в файле vault.yml в папке ansible/group_vars/webservers :
```
echo "yc_iam_token: !vault |" >> ansible/group_vars/webservers/vault.yml
ansible-vault encrypt_string 'ваш_токен_доступа_яндекс_облака' >> ansible/group_vars/webservers/vault.yml
```
***


## Доступные команды
- Открывает файл Ansible vault для редактирования конфиденциальных данных:
```make edit_vault```

- Отображает содержимое файла Ansible Vault без редактирования:
```make view_vault```

- Извлечение образа Docker:
```make pull-image```

- Запуск контейнера Docker:
```make run-container```

- Настраивает мониторинг базы данных:
```make configure_datadog```

- Подготовка Terraform к работе с инфраструктурой:
```make init_infra ```

- Запуск формирования инфрастуктуры посредством Terraform:
```make apply```

- Удаление созданной инфраструктуры:
``` make destroy```
***













***
## Ссылка на приложение
```
https://puffysound.ru
```