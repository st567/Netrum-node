# Netrum Lite Node - CryptoCompass Installation Guide

## 🚀 Быстрый старт / Quick Start

Этот скрипт автоматизирует установку и управление Netrum Lite Node - легковесной нодой для участия в децентрализованной сети вычислений Netrum.

This script automates the installation and management of Netrum Lite Node - a lightweight node for participating in the Netrum decentralized compute network.

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
bash <(curl -s https://raw.githubusercontent.com/your-repo/netrum-node/main/netrum_node.sh)
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
- **Регистрация ноды в сети** / **Register node in network**: `netrum-node-register`
- **Подпись сообщения** / **Sign message**: `netrum-node-sign`

### 3. Синхронизация и майнинг / Sync & Mining
- **Синхронизация с сетью** / **Sync with network**: `netrum-sync`
- **Просмотр логов синхронизации** / **View sync logs**: `netrum-sync-log`
- **Запуск майнинга** / **Start mining**: `netrum-mining`
- **Просмотр логов майнинга** / **View mining logs**: `netrum-mining-log`

### 4. Получение наград / Rewards
- **Просмотр баланса** / **View balance**: `netrum-wallet`
- **Получение наград** / **Claim rewards**: `netrum-claim`

### 5. Мониторинг системы / System Monitoring
- **Статус системы** / **System status**: `netrum-system`
- **Проверка здоровья ноды** / **Node health check**: `netrum-system`

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

## 🔧 Управление нодой / Node Management

### Основные команды / Main Commands

```bash
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
```

### Команды кошелька / Wallet Commands

```bash
# Создать кошелек / Create wallet
netrum-new-wallet

# Импортировать кошелек / Import wallet
netrum-import-wallet

# Экспорт ключа / Export key
netrum-wallet-key

# Удалить кошелек / Remove wallet
netrum-wallet-remove
```

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

## 🛡️ Безопасность / Security

### Рекомендации по безопасности / Security Recommendations
1. **Сохраните приватный ключ** / **Save private key**: Храните в безопасном месте / Store in secure location
2. **Не делитесь приватным ключом** / **Don't share private key**: Никогда не передавайте третьим лицам / Never share with third parties
3. **Регулярные бэкапы** / **Regular backups**: Создавайте резервные копии кошелька / Create wallet backups
4. **Обновления** / **Updates**: Регулярно обновляйте ноду / Regularly update node

## 📞 Поддержка / Support

### Официальные ресурсы / Official Resources
- **Документация**: https://docs.netrumlabs.com/
- **Discord**: https://discord.gg/netrum
- **GitHub**: https://github.com/NetrumLabs/netrum-lite-node

### CryptoCompass Resources
- **Twitter/X**: https://x.com/0xGreenFlag
- **YouTube**: https://www.youtube.com/@beloglazovpro
- **Telegram**: https://t.me/beloglazovpro

## 🚨 Важные замечания / Important Notes

1. **BASE токены**: Требуются для оплаты газа / **BASE tokens**: Required for gas fees
2. **Время работы**: Важно для получения наград / **Uptime**: Important for earning rewards
3. **Синхронизация**: Должна быть активна для майнинга / **Sync**: Must be active for mining
4. **Награды**: Доступны каждые 24 часа / **Rewards**: Available every 24 hours

## 📝 Changelog

### v1.0.0
- Первоначальный релиз / Initial release
- Автоматическая установка / Automatic installation
- Управление кошельком / Wallet management
- Регистрация ноды / Node registration
- Майнинг и получение наград / Mining and rewards claiming

## 📄 Лицензия / License

Этот скрипт предоставляется "как есть" без каких-либо гарантий.

This script is provided "as is" without any warranties.

---

**Создано CryptoCompass** / **Created by CryptoCompass**

*Для получения дополнительной информации посетите наши ресурсы / For more information visit our resources*
