# Netrum Lite Node - CryptoCompass Installation Guide

## 🚀 Быстрый старт / Quick Start

Этот скрипт автоматизирует установку и управление Netrum Lite Node - легковесной нодой для участия в децентрализованной сети вычислений Netrum.

This script automates the installation and management of Netrum Lite Node - a lightweight node for participating in the Netrum decentralized compute network.

### Официальные ресурсы / Official Resources
- **Документация**: https://docs.netrumlabs.com/
- **Discord**: https://discord.com/invite/Mv6uKBKCZM
- **GitHub**: https://github.com/NetrumLabs/netrum-lite-node

## 📋 Требования к системе / System Requirements

### Минимальные требования / Minimum Requirements:
- **CPU**: 2 ядра / 2 Cores
- **RAM**: 4 GB
- **Диск**: 50 GB SSD
- **Сеть**: 10 Mbps (загрузка/выгрузка) / Network: 10 Mbps (download/upload)

### Рекомендуемые требования / Recommended Requirements:
- **CPU**: 2+ ядра / 2+ Cores
- **RAM**: 6 GB или больше / 6 GB or more
- **Диск**: 100 GB SSD / 100 GB SSD

## 🛠️ Установка / Installation

### 🚀 Быстрый запуск / Quick Launch
```bash
bash <(curl -s https://raw.githubusercontent.com/st567/Netrum-node/main/netrum_node.sh)
```

## 🎯 Основные функции / Main Features

### 1. Управление кошельком / Wallet Management
- **Создание нового кошелька** / **Create new wallet**: `netrum-new-wallet`
- **Импорт существующего кошелька** / **Import existing wallet**: `netrum-import-wallet`
- **Просмотр информации о кошельке** / **View wallet info**: `netrum-wallet`
- **Экспорт приватного ключа** / **Export private key**: `netrum-wallet-key`

### 2. Регистрация и идентификация ноды / Node Registration & Identity
- **Проверка Base домена** / **Check Base domain**: `netrum-check-basename`
- **Просмотр ID ноды** / **View Node ID**: `netrum-node-id`
- **Очистка ID ноды** / **Clear Node ID**: `netrum-node-id-remove`
- **Регистрация ноды в сети** / **Register node in network**: `netrum-node-register`
- **Подпись сообщения** / **Sign message**: `netrum-node-sign`

### 3. Синхронизация и майнинг / Sync & Mining
- **Синхронизация с сетью** / **Sync with network**: `netrum-sync`
- **Просмотр логов синхронизации** / **View sync logs**: `netrum-sync-log`
- **Запуск майнинга** / **Start mining**: `netrum-mining`
- **Просмотр логов майнинга** / **View mining logs**: `netrum-mining-log`

### 3.1. Задачи (TTS) / Tasks (TTS)
- **Разрешить выполнение задач** / **Allow task permission**: `netrum-task-allow`
- **Запуск задачи** / **Start task**: `netrum-task`
- **Просмотр логов задач** / **View task logs**: `netrum-task-log`

### 4. Получение наград / Rewards
- **Просмотр баланса** / **View balance**: `netrum-wallet`
- **Получение наград** / **Claim rewards**: `netrum-claim`

### 5. Мониторинг системы / System Monitoring
- **Статус системы** / **System status**: `netrum-system`
- **Проверка здоровья ноды** / **Node health check**: `netrum-system`

### 6. Обновление / Updates
- **Обновление CLI** / **Update CLI**: `netrum-update`

## 📖 Пошаговое руководство / Step-by-Step Guide

### Шаг 1: Установка / Step 1: Installation
1. Запустите скрипт
2. Выберите "Установка" / Choose "Install"
3. Подтвердите требования к системе / Confirm system requirements

### Шаг 2: Настройка кошелька / Step 2: Wallet Setup
1. Выберите создание нового кошелька или импорт существующего
2. Choose to create new wallet or import existing one
3. Сохраните приватный ключ в безопасном месте
4. Save private key in a secure location

### Шаг 3: Регистрация ноды / Step 3: Node Registration
1. Проверьте Base домен / Check Base domain
2. Зарегистрируйте ноду в сети / Register node in network
3. Убедитесь, что у вас есть BASE для газа / Ensure you have BASE for gas

### Шаг 4: Запуск майнинга / Step 4: Start Mining
1. Запустите синхронизацию / Start sync
2. Запустите майнинг / Start mining
3. Мониторьте логи / Monitor logs

### Шаг 5: Настройка задач (TTS) / Step 5: Task Setup (TTS)
1. Разрешите выполнение задач / Allow task permission: `netrum-task-allow`
2. Запустите задачу / Start task: `netrum-task`
3. Мониторьте логи задач / Monitor task logs: `netrum-task-log`

## 🎮 Интерактивное меню / Interactive Menu

Скрипт предоставляет удобное интерактивное меню для управления нодой:

The script provides a convenient interactive menu for node management:

### Главное меню / Main Menu
1. **Установка** / **Install** - Полная установка Netrum Lite Node
2. **Управление** / **Manage** - Меню управления нодой
3. **Обновление CLI** / **Update CLI** - Обновление командной строки
4. **Удаление** / **Remove** - Удаление ноды

### Меню управления / Management Menu
1. **Статус** / **Status** - Общий статус ноды
2. **Показать кошелек** / **Show Wallet** - Информация о кошельке
3. **Проверить Base домен** / **Check Base Domain** - Проверка домена
4. **Подписать и зарегистрировать ноду** / **Sign & Register Node** - Регистрация
5. **Логи синхронизации** / **Sync Logs** - Просмотр логов синхронизации
6. **Запустить майнинг** / **Start Mining** - Запуск майнинга
7. **Логи майнинга** / **Mining Logs** - Просмотр логов майнинга
8. **Доходы** / **Earnings** - Просмотр баланса
9. **Получить награды** / **Claim Rewards** - Получение наград
10. **Экспорт ключа** / **Export Key** - Экспорт приватного ключа
11. **Удалить кошелек** / **Remove Wallet** - Удаление кошелька
12. **Очистить ID ноды** / **Clear Node ID** - Очистка ID ноды
13. **Остановить сервисы** / **Stop Services** - Остановка сервисов
14. **Проверка здоровья** / **Health Check** - Проверка состояния
15. **Исправить права доступа** / **Fix Permissions** - Исправление прав
16. **Статус сервиса** / **Service Status** - Статус системного сервиса
17. **Запустить сервис** / **Start Service** - Запуск сервиса
18. **Остановить сервис** / **Stop Service** - Остановка сервиса
19. **Логи сервиса** / **Service Logs** - Просмотр логов сервиса
20. **Перезапустить сервис** / **Restart Service** - Перезапуск сервиса
21. **Разрешить задачи** / **Task Allow** - Разрешить выполнение задач
22. **Запустить задачу** / **Start Task** - Запуск задачи
23. **Логи задач** / **Task Logs** - Просмотр логов задач
24. **Исправить Speedtest CLI** / **Fix Speedtest CLI** - Исправление проблем со speedtest-cli
25. **Справка по командам** / **Help Commands** - Список всех команд

## 🔧 Управление нодой / Node Management

### Основные команды / Main Commands

```bash
# Обновление CLI / Update CLI
netrum-update

# Статус системы / System status
netrum-system

# Информация о кошельке / Wallet information
netrum-wallet

# ID ноды / Node ID
netrum-node-id

# Синхронизация / Sync
netrum-sync

# Майнинг / Mining
netrum-mining

# Получение наград / Claim rewards
netrum-claim
```

### Команды логов / Log Commands

```bash
# Логи синхронизации / Sync logs
netrum-sync-log

# Логи майнинга / Mining logs
netrum-mining-log

# Логи задач / Task logs
netrum-task-log
```

### Команды задач (TTS) / Task Commands (TTS)

```bash
# Разрешить выполнение задач / Allow task permission
netrum-task-allow

# Запустить задачу / Start task
netrum-task

# Просмотр логов задач / View task logs
netrum-task-log
```

### Команды кошелька / Wallet Commands

```bash
# Создать кошелек / Create wallet
netrum-new-wallet

# Импортировать кошелек / Import wallet
netrum-import-wallet

# Просмотр информации о кошельке / View wallet info
netrum-wallet

# Экспорт ключа / Export key
netrum-wallet-key

# Удалить кошелек / Remove wallet
netrum-wallet-remove
```

### Команды ноды / Node Commands

```bash
# Просмотр ID ноды / View Node ID
netrum-node-id

# Очистить ID ноды / Clear Node ID
netrum-node-id-remove

# Подписать сообщение / Sign message
netrum-node-sign

# Зарегистрировать ноду / Register node
netrum-node-register

# Проверить Base домен / Check Base domain
netrum-check-basename
```

### Команды обновления / Update Commands

```bash
# Обновить CLI / Update CLI
netrum-update
```

## 📋 Полный список команд / Complete Command List

Все доступные команды Netrum CLI:

All available Netrum CLI commands:

| Команда / Command | Описание / Description |
|-------------------|------------------------|
| `netrum-update` | Обновление CLI / Update CLI |
| `netrum-system` | Статус системы / System status |
| `netrum-new-wallet` | Создать кошелек / Create wallet |
| `netrum-import-wallet` | Импортировать кошелек / Import wallet |
| `netrum-wallet` | Информация о кошельке / Wallet info |
| `netrum-wallet-key` | Экспорт приватного ключа / Export private key |
| `netrum-wallet-remove` | Удалить кошелек / Remove wallet |
| `netrum-check-basename` | Проверить Base домен / Check Base domain |
| `netrum-node-id` | Показать ID ноды / Show Node ID |
| `netrum-node-id-remove` | Очистить ID ноды / Clear Node ID |
| `netrum-node-sign` | Подписать сообщение / Sign message |
| `netrum-node-register` | Зарегистрировать ноду / Register node |
| `netrum-task-allow` | Разрешить задачи / Allow task permission |
| `netrum-task` | Запустить задачу / Start task |
| `netrum-task-log` | Логи задач / Task logs |
| `netrum-sync` | Синхронизация / Sync |
| `netrum-sync-log` | Логи синхронизации / Sync logs |
| `netrum-mining` | Майнинг / Mining |
| `netrum-mining-log` | Логи майнинга / Mining logs |
| `netrum-claim` | Получить награды / Claim rewards |

## 💰 Экономика / Economics

### Токены NPT
- **Майнинг**: Основан на времени работы ноды / **Mining**: Based on node uptime
- **Награды**: Доступны каждые 24 часа / **Rewards**: Available every 24 hours
- **Газ**: Требуется небольшое количество BASE / **Gas**: Requires small amount of BASE

### Требования к газу / Gas Requirements
- **Регистрация ноды**: 0.0002-0.0005 BASE
- **Получение наград**: 0.00002-0.00003 BASE

## 🔍 Мониторинг и диагностика / Monitoring & Diagnostics

### Проверка статуса / Status Check
```bash
# Общий статус / General status
netrum-system

# Статус синхронизации / Sync status
netrum-sync-log

# Статус майнинга / Mining status
netrum-mining-log

# Статус задач / Task status
netrum-task-log
```

### Решение проблем / Troubleshooting

#### Нода не синхронизируется / Node not syncing
1. Проверьте интернет-соединение / Check internet connection
2. Убедитесь, что порты открыты / Ensure ports are open
3. Перезапустите синхронизацию / Restart sync

#### Майнинг не активен / Mining not active
1. Убедитесь, что нода зарегистрирована / Ensure node is registered
2. Проверьте время работы / Check uptime
3. Убедитесь, что синхронизация активна / Ensure sync is active

#### Не удается получить награды / Cannot claim rewards
1. Проверьте баланс BASE / Check BASE balance
2. Убедитесь, что прошло 24 часа / Ensure 24 hours have passed
3. Проверьте статус майнинга / Check mining status

#### Задачи не выполняются / Tasks not running
1. Убедитесь, что разрешено выполнение задач / Ensure task permission is allowed: `netrum-task-allow`
2. Проверьте логи задач / Check task logs: `netrum-task-log`
3. Убедитесь, что нода зарегистрирована / Ensure node is registered

#### Проблемы со Speedtest CLI / Speedtest CLI Issues
Если возникают проблемы с speedtest-cli, используйте функцию исправления из меню управления (пункт 25) или выполните следующие команды вручную:

If you encounter issues with speedtest-cli, use the fix function from the management menu (option 25) or run the following commands manually:

```bash
# Удалить старый speedtest-cli / Remove old speedtest-cli
sudo apt-get remove speedtest-cli -y

# Исправить зависимости / Fix dependencies
sudo apt-get install -f -y

# Обновить пакеты и установить curl / Update packages and install curl
sudo apt-get update
sudo apt-get install curl -y

# Установить speedtest из официального репозитория / Install speedtest from official repository
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt-get install speedtest -y

# Запустить speedtest и сохранить результат / Run speedtest and save result
speedtest --accept-license --accept-gdpr --format=json > /root/netrum-lite-node/src/system/system/speedtext.txt
```

**Примечание**: Функция исправления доступна в меню управления (пункт 25) и автоматически выполнит все необходимые действия.

**Note**: The fix function is available in the management menu (option 25) and will automatically perform all necessary actions.

## 🛡️ Безопасность / Security

### Рекомендации по безопасности / Security Recommendations
1. **Сохраните приватный ключ** / **Save private key**: Храните в безопасном месте / Store in secure location
2. **Не делитесь приватным ключом** / **Don't share private key**: Никогда не передавайте третьим лицам / Never share with third parties
3. **Регулярные бэкапы** / **Regular backups**: Создавайте резервные копии кошелька / Create wallet backups
4. **Обновления** / **Updates**: Регулярно обновляйте ноду / Regularly update node

## 📞 Поддержка / Support

### CryptoCompass Resources
- **Twitter/X**: https://x.com/0xGreenFlag
- **YouTube**: https://www.youtube.com/@beloglazovpro
- **Telegram**: https://t.me/beloglazovpro

## 🚨 Важные замечания / Important Notes

1. **BASE токены**: Требуются для оплаты газа / **BASE tokens**: Required for gas fees
2. **Время работы**: Важно для получения наград / **Uptime**: Important for earning rewards
3. **Синхронизация**: Должна быть активна для майнинга / **Sync**: Must be active for mining
4. **Награды**: Доступны каждые 24 часа / **Rewards**: Available every 24 hours
5. **Задачи (TTS)**: Требуют предварительного разрешения / **Tasks (TTS)**: Require prior permission via `netrum-task-allow`
6. **Обновления**: Регулярно обновляйте CLI для получения новых функций / **Updates**: Regularly update CLI for new features via `netrum-update`

## 📄 Лицензия / License

Этот скрипт предоставляется "как есть" без каких-либо гарантий.

This script is provided "as is" without any warranties.

---

**Создано CryptoCompass** / **Created by CryptoCompass**

*Для получения дополнительной информации посетите наши ресурсы / For more information visit our resources*
