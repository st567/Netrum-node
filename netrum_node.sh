#!/bin/bash

# Netrum Lite Node - Simple Management Script
# CryptoCompass Branded Installation Script

# Color functions for CryptoCompass branding
show_red()     { echo -e "\e[31m$1\e[0m"; }
show_green()   { echo -e "\e[32m$1\e[0m"; }
show_yellow()  { echo -e "\e[1;33m$1\e[0m"; }
show_blue()    { echo -e "\e[34m$1\e[0m"; }
show_purple()  { echo -e "\e[35m$1\e[0m"; }
show_cyan()    { echo -e "\e[36m$1\e[0m"; }
show_white()   { echo -e "\e[1;37m$1\e[0m"; }
show_bold()    { echo -e "\e[1m$1\e[0m"; }

# Combined color functions
show_success() { echo -e "\e[32m\e[1m$1\e[0m"; }
show_error()   { echo -e "\e[31m\e[1m$1\e[0m"; }
show_warning() { echo -e "\e[1;33m\e[1m$1\e[0m"; }
show_info()    { echo -e "\e[36m\e[1m$1\e[0m"; }
show_header()  { echo -e "\e[1;37m\e[1m$1\e[0m"; }

# CryptoCompass logo
show_logo() {
    clear
    echo -e "\e[36m\e[1m"
    echo "  ╔══════════════════════════════════════════════════════════════╗"
    echo "  ║                                                              ║"
    echo "  ║    ██████╗██████╗ ██╗   ██╗██████╗ ████████╗ ██████╗         ║"
    echo "  ║   ██╔════╝██╔══██╗╚██╗ ██╔╝██╔══██╗╚══██╔══╝██╔═══██╗        ║"
    echo "  ║   ██║     ██████╔╝ ╚████╔╝ ██████╔╝   ██║   ██║   ██║        ║"
    echo "  ║   ██║     ██╔══██╗  ╚██╔╝  ██╔═══╝    ██║   ██║   ██║        ║"
    echo "  ║   ╚██████╗██║  ██║   ██║   ██║        ██║   ╚██████╔╝        ║"
    echo "  ║    ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝        ╚═╝    ╚═════╝         ║"
    echo "  ║                                                              ║"
    echo "  ║  ██████╗ ██████╗ ███╗   ███╗██████╗ ██████╗ ███████╗███████╗ ║"
    echo "  ║ ██╔════╝██╔═══██╗████╗ ████║██╔══██╗██╔══██╗██╔════╝██╔════╝ ║"
    echo "  ║ ██║     ██║   ██║██╔████╔██║██████╔╝███████║███████╗███████╗ ║"
    echo "  ║ ██║     ██║   ██║██║╚██╔╝██║██╔═══╝ ██╔══██║╚════██║╚════██║ ║"
    echo "  ║ ╚██████╗╚██████╔╝██║     ██║██║     ██║  ██║███████║███████║ ║"
    echo "  ║  ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝ ║"
    echo "  ║                                                              ║"
    echo "  ║                      Netrum Lite Node                        ║"
    echo "  ║                   Simple Management Script                   ║"
    echo "  ║                                                              ║"
    echo "  ╚══════════════════════════════════════════════════════════════╝"
    echo -e "\e[0m"
    echo ""
    echo -e "\e[1;37m\e[1m🌐 CryptoCompass Resources:\e[0m"
    echo -e "\e[36m\e[1m• Twitter/X:\e[0m \e[1;37mhttps://x.com/0xGreenFlag\e[0m"
    echo -e "\e[36m\e[1m• YouTube:\e[0m \e[1;37mhttps://www.youtube.com/@beloglazovpro\e[0m"
    echo -e "\e[36m\e[1m• Telegram:\e[0m \e[1;37mhttps://t.me/beloglazovpro\e[0m"
    echo ""
}

# Set default language to English
LANG="en"

# Text strings in English with Russian translations
get_text() {
    case $1 in
        "main_menu") echo "Main Menu (Главное меню)" ;;
        "install") echo "Install (Установка)" ;;
        "manage") echo "Manage (Управление)" ;;
        "remove") echo "Remove (Удаление)" ;;
        "exit") echo "Exit (Выход)" ;;
        "requirements") echo "System Requirements: (Требования к системе:)" ;;
        "cpu") echo "• CPU: 2 Cores (2 ядра)" ;;
        "ram") echo "• RAM: 4 GB" ;;
        "disk") echo "• Disk: 50 GB SSD or higher (50 GB SSD или больше)" ;;
        "bandwidth") echo "• Bandwidth: 10 Mbps (Пропускная способность: 10 Mbps)" ;;
        "continue") echo "Continue with installation? (Продолжить установку?)" ;;
        "yes_no") echo "[y/n]: " ;;
        "installing") echo "Installing Netrum Lite Node... (Установка Netrum Lite Node...)" ;;
        "updating") echo "Updating system... (Обновление системы...)" ;;
        "installing_packages") echo "Installing required packages... (Установка необходимых пакетов...)" ;;
        "installing_nodejs") echo "Installing Node.js v20... (Установка Node.js v20...)" ;;
        "cloning_repo") echo "Cloning repository... (Клонирование репозитория...)" ;;
        "installing_deps") echo "Installing project dependencies... (Установка зависимостей проекта...)" ;;
        "linking_cli") echo "Linking CLI globally... (Связывание CLI глобально...)" ;;
        "setup_wallet") echo "Setting up wallet... (Настройка кошелька...)" ;;
        "create_wallet") echo "Create new wallet (Создать новый кошелек)" ;;
        "import_wallet") echo "Import existing wallet (Импортировать существующий кошелек)" ;;
        "enter_private_key") echo "Enter private key: (Введите приватный ключ:)" ;;
        "wallet_created") echo "Wallet created (Кошелек создан)" ;;
        "wallet_imported") echo "Wallet imported (Кошелек импортирован)" ;;
        "check_basename") echo "Checking Base domain... (Проверка Base домена...)" ;;
        "node_id") echo "Node ID (ID ноды)" ;;
        "register_node") echo "Registering node in network... (Регистрация ноды в сети...)" ;;
        "sync_node") echo "Syncing with network... (Синхронизация с сетью...)" ;;
        "start_mining") echo "Starting mining... (Запуск майнинга...)" ;;
        "claim_rewards") echo "Claiming rewards... (Получение наград...)" ;;
        "installation_complete") echo "Installation completed! (Установка завершена!)" ;;
        "node_running") echo "Node is running (Нода запущена)" ;;
        "node_stopped") echo "Node is stopped (Нода остановлена)" ;;
        "press_enter") echo "Press Enter to continue... (Нажмите Enter для продолжения...)" ;;
        "invalid_choice") echo "Invalid choice! (Неверный выбор!)" ;;
        "logs") echo "Logs (Логи)" ;;
        "restart") echo "Restart (Перезапуск)" ;;
        "stop") echo "Stop (Остановка)" ;;
        "start") echo "Start (Запуск)" ;;
        "back") echo "Back (Назад)" ;;
        "node_restarted") echo "Node restarted! (Нода перезапущена!)" ;;
        "node_stopped_msg") echo "Node stopped! (Нода остановлена!)" ;;
        "node_started") echo "Node started! (Нода запущена!)" ;;
        "remove_confirm") echo "Are you sure you want to remove Netrum Lite Node? (Вы уверены, что хотите удалить Netrum Lite Node?)" ;;
        "removing") echo "Removing Netrum Lite Node... (Удаление Netrum Lite Node...)" ;;
        "removed") echo "Netrum Lite Node removed! (Netrum Lite Node удален!)" ;;
        "not_installed") echo "Netrum Lite Node not installed (Netrum Lite Node не установлен)" ;;
        "already_installed") echo "Netrum Lite Node already installed (Netrum Lite Node уже установлен)" ;;
        "wallet_info") echo "Wallet Information (Информация о кошельке)" ;;
        "show_wallet") echo "Show Wallet (Показать кошелек)" ;;
        "export_key") echo "Export Private Key (Экспорт приватного ключа)" ;;
        "remove_wallet") echo "Remove Wallet (Удалить кошелек)" ;;
        "help_commands") echo "Help Commands (Команды помощи)" ;;
        "manual_commands") echo "Manual Commands (Ручные команды)" ;;
        "status") echo "Status (Статус)" ;;
        "earnings") echo "Earnings (Доходы)" ;;
        "health_check") echo "Health Check (Проверка здоровья)" ;;
        "sync_logs") echo "Sync Logs (Логи синхронизации)" ;;
        "mining_logs") echo "Mining Logs (Логи майнинга)" ;;
        "system_status") echo "System Status (Статус системы)" ;;
        "node_registered") echo "Node registered (Нода зарегистрирована)" ;;
        "node_not_registered") echo "Node not registered (Нода не зарегистрирована)" ;;
        "mining_active") echo "Mining active (Майнинг активен)" ;;
        "mining_inactive") echo "Mining inactive (Майнинг неактивен)" ;;
        "sync_active") echo "Sync active (Синхронизация активна)" ;;
        "sync_inactive") echo "Sync inactive (Синхронизация неактивна)" ;;
        "rewards_available") echo "Rewards available (Награды доступны)" ;;
        "no_rewards") echo "No rewards available (Награды недоступны)" ;;
        "base_required") echo "BASE required for gas (Требуется BASE для газа)" ;;
        "insufficient_base") echo "Insufficient BASE (Недостаточно BASE)" ;;
        "wallet_address") echo "Wallet Address (Адрес кошелька)" ;;
        "private_key") echo "Private Key (Приватный ключ)" ;;
        "node_identity") echo "Node Identity (Идентичность ноды)" ;;
        "base_domain") echo "Base Domain (Base домен)" ;;
        "npt_balance") echo "NPT Balance (Баланс NPT)" ;;
        "base_balance") echo "BASE Balance (Баланс BASE)" ;;
        "sign_register_node") echo "Sign & Register Node (Подписать и зарегистрировать ноду)" ;;
        "remove_wallet") echo "Remove Wallet (Удалить кошелек)" ;;
        "clear_node_id") echo "Clear Node ID (Очистить ID ноды)" ;;
        "update_cli") echo "Update CLI (Обновить CLI)" ;;
        "stop_services") echo "Stop Services (Остановить сервисы)" ;;
        "start_mining") echo "Start Mining (Запустить майнинг)" ;;
        "check_base_domain") echo "Check Base Domain (Проверить Base домен)" ;;
        "fix_permissions") echo "Fix Permissions (Исправить права доступа)" ;;
    esac
}

# Check if Netrum node is installed
is_netrum_installed() {
    if command -v netrum &> /dev/null; then
        return 0
    else
        return 1
    fi
}

# Check if node is running
is_node_running() {
    if pgrep -f "netrum" > /dev/null; then
        return 0
    else
        return 1
    fi
}

# Show system requirements
show_requirements() {
    show_yellow "$(get_text "requirements")"
    show_white "$(get_text "cpu")"
    show_white "$(get_text "ram")"
    show_white "$(get_text "disk")"
    show_white "$(get_text "bandwidth")"
    echo ""
}

# Update system
update_system() {
    show_info "$(get_text "updating")"

    # Update package lists
    show_info "Updating package lists... (Обновление списков пакетов...)"
    if sudo apt update 2>/dev/null; then
        show_success "Package lists updated (Списки пакетов обновлены)"
    else
        show_warning "Package list update had issues, continuing... (Обновление списков пакетов имело проблемы, продолжаем...)"
    fi

    # Upgrade system packages
    show_info "Upgrading system packages... (Обновление системных пакетов...)"
    if sudo apt upgrade -y 2>/dev/null; then
        show_success "System packages upgraded (Системные пакеты обновлены)"
    else
        show_warning "System upgrade had issues, continuing... (Обновление системы имело проблемы, продолжаем...)"
    fi

    show_success "System update completed (Обновление системы завершено)"
    return 0
}

# Install required packages
install_packages() {
    show_info "$(get_text "installing_packages")"

    PACKAGES=(
        curl
        git
        jq
        bc
        speedtest-cli
    )

    for PACKAGE in "${PACKAGES[@]}"; do
        show_info "Installing $PACKAGE... (Установка $PACKAGE...)"
        sudo apt install -y "$PACKAGE"
        if [ $? -eq 0 ]; then
            show_success "$PACKAGE successfully installed. ($PACKAGE успешно установлен.)"
        else
            show_error "Error installing $PACKAGE. Skipping... (Ошибка при установке $PACKAGE. Пропускаем...)"
        fi
    done
}

# Install Node.js v20
install_nodejs() {
    show_info "$(get_text "installing_nodejs")"

    # Check current Node version
    if command -v node &> /dev/null; then
        NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
        if [ "$NODE_VERSION" -ge 20 ]; then
            show_success "Node.js v20+ already installed (Node.js v20+ уже установлен)"
            return 0
        else
            show_warning "Current Node.js version: $(node -v) (Текущая версия Node.js: $(node -v))"
            show_warning "Node.js v20+ is required for Netrum (Для Netrum требуется Node.js v20+)"
            show_info "Removing old Node.js and installing v20... (Удаление старой версии Node.js и установка v20...)"

            # Remove old Node.js
            show_info "Removing old Node.js... (Удаление старой версии Node.js...)"
            sudo apt remove -y nodejs npm 2>/dev/null || true
            sudo apt purge -y nodejs npm 2>/dev/null || true
            sudo apt autoremove -y 2>/dev/null || true
        fi
    fi

    # Install Node.js v20
    show_info "Adding NodeSource repository... (Добавление репозитория NodeSource...)"
    if curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -; then
        show_success "NodeSource repository added (Репозиторий NodeSource добавлен)"
    else
        show_error "Failed to add NodeSource repository (Не удалось добавить репозиторий NodeSource)"
        show_info "Trying alternative installation method... (Пробуем альтернативный метод установки...)"

        # Alternative: Install from Ubuntu repositories
        if sudo apt install -y nodejs npm; then
            show_success "Node.js installed from Ubuntu repositories (Node.js установлен из репозиториев Ubuntu)"
            return 0
        else
            show_error "All Node.js installation methods failed (Все методы установки Node.js не удались)"
            return 1
        fi
    fi

    show_info "Installing Node.js v20... (Установка Node.js v20...)"
    if sudo apt install -y nodejs; then
        # Verify installation
        if command -v node &> /dev/null && command -v npm &> /dev/null; then
            NODE_VERSION=$(node -v)
            NPM_VERSION=$(npm -v)
            show_success "Node.js v20 installed successfully (Node.js v20 успешно установлен)"
            show_info "Node.js version: $NODE_VERSION (Версия Node.js: $NODE_VERSION)"
            show_info "npm version: $NPM_VERSION (Версия npm: $NPM_VERSION)"
            return 0
        else
            show_error "Node.js installation verification failed (Проверка установки Node.js не удалась)"
            return 1
        fi
    else
        show_error "Failed to install Node.js (Не удалось установить Node.js)"
        return 1
    fi
}

# Clone and setup Netrum repository
setup_netrum_repo() {
    show_info "$(get_text "cloning_repo")"

    # Clone repository
    if git clone https://github.com/NetrumLabs/netrum-lite-node.git /root/netrum-lite-node; then
        show_success "Repository cloned successfully (Репозиторий успешно клонирован)"
    else
        show_error "Failed to clone repository (Не удалось клонировать репозиторий)"
        return 1
    fi

    cd /root/netrum-lite-node

    show_info "$(get_text "installing_deps")"
    show_info "Installing dependencies... (Установка зависимостей...)"

    # Show system information for debugging
    show_info "System information (Информация о системе):"
    show_info "Node.js version: $(node -v) (Версия Node.js: $(node -v))"
    show_info "npm version: $(npm -v) (Версия npm: $(npm -v))"
    show_info "Architecture: $(uname -m) (Архитектура: $(uname -m))"
    show_info "OS: $(lsb_release -d 2>/dev/null | cut -f2 || echo "Unknown") (ОС: $(lsb_release -d 2>/dev/null | cut -f2 || echo "Неизвестно"))"

    show_info "Note: Warnings about deprecated packages (like 'node-domexception') are normal and will not stop installation (Примечание: предупреждения об устаревших пакетах (например, 'node-domexception') - это нормально и не остановят установку)"

    # Install dependencies - warnings are normal and should not stop installation
    show_info "Running npm install... (Запуск npm install...)"

    # Capture npm output to check for real errors vs warnings
    NPM_OUTPUT=$(npm install 2>&1)
    NPM_EXIT_CODE=$?

    # Check if npm install actually succeeded despite warnings
    if [ $NPM_EXIT_CODE -eq 0 ] || echo "$NPM_OUTPUT" | grep -q "added.*packages"; then
        show_success "Dependencies installed successfully (Зависимости успешно установлены)"

        # Show warnings if any, but don't treat them as errors
        if echo "$NPM_OUTPUT" | grep -q "warn deprecated"; then
            show_info "Note: Some packages show deprecation warnings - this is normal and safe to ignore (Примечание: некоторые пакеты показывают предупреждения об устаревании - это нормально и безопасно игнорировать)"
        fi
    else
        show_warning "npm install had issues, trying alternative method... (npm install имел проблемы, пробуем альтернативный метод...)"

        # Try alternative installation methods
        show_warning "npm install had issues, trying alternative methods... (npm install имел проблемы, пробуем альтернативные методы...)"

        # Method 1: Clear npm cache and try again
        show_info "Method 1: Clearing npm cache and retrying... (Метод 1: Очистка кэша npm и повторная попытка...)"
        npm cache clean --force 2>/dev/null || true
        if npm install 2>/dev/null; then
            show_success "Dependencies installed after cache clear (Зависимости установлены после очистки кэша)"
        else
            # Method 2: Try with --force
            show_info "Method 2: Trying npm install --force... (Метод 2: Пробуем npm install --force...)"
            if npm install --force 2>/dev/null; then
                show_success "Dependencies installed with --force flag (Зависимости установлены с флагом --force)"
            else
                # Method 3: Try with --legacy-peer-deps
                show_info "Method 3: Trying npm install --legacy-peer-deps... (Метод 3: Пробуем npm install --legacy-peer-deps...)"
                if npm install --legacy-peer-deps 2>/dev/null; then
                    show_success "Dependencies installed with --legacy-peer-deps flag (Зависимости установлены с флагом --legacy-peer-deps)"
                else
                    # Method 4: Try with both flags
                    show_info "Method 4: Trying npm install --force --legacy-peer-deps... (Метод 4: Пробуем npm install --force --legacy-peer-deps...)"
                    if npm install --force --legacy-peer-deps 2>/dev/null; then
                        show_success "Dependencies installed with both flags (Зависимости установлены с обоими флагами)"
                    else
                        # Method 5: Try yarn as fallback
                        show_info "Method 5: Trying yarn as fallback... (Метод 5: Пробуем yarn как запасной вариант...)"
                        if command -v yarn &> /dev/null; then
                            if yarn install 2>/dev/null; then
                                show_success "Dependencies installed with yarn (Зависимости установлены с yarn)"
                            else
                                show_error "All installation methods failed (Все методы установки не удались)"
                                show_error "npm output: (вывод npm:)"
                                echo "$NPM_OUTPUT"
                                show_info "Try running manually: cd /root/netrum-lite-node && npm install (Попробуйте запустить вручную: cd /root/netrum-lite-node && npm install)"
                                return 1
                            fi
                        else
                            show_error "All installation methods failed (Все методы установки не удались)"
                            show_error "npm output: (вывод npm:)"
                            echo "$NPM_OUTPUT"
                            show_info "Try running manually: cd /root/netrum-lite-node && npm install (Попробуйте запустить вручную: cd /root/netrum-lite-node && npm install)"
                            return 1
                        fi
                    fi
                fi
            fi
        fi
    fi

    show_info "$(get_text "linking_cli")"
    if sudo npm link; then
        show_success "CLI linked successfully (CLI успешно связан)"
    else
        show_error "Failed to link CLI (Не удалось связать CLI)"
        return 1
    fi

    show_success "Netrum Lite Node installed (Netrum Lite Node установлен)"
}

# Setup wallet
setup_wallet() {
    show_info "$(get_text "setup_wallet")"
    echo ""
    show_white "1) $(get_text "create_wallet")"
    show_white "2) $(get_text "import_wallet")"
    echo ""
    read -p "$(show_cyan "Choice [1-2] (Выбор [1-2]): ")" wallet_choice

    case $wallet_choice in
        1)
            if netrum-new-wallet; then
                show_success "$(get_text "wallet_created")"
            else
                show_error "Failed to create wallet (Не удалось создать кошелек)"
                setup_wallet
                return
            fi
            echo ""
            show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
            read
            ;;
         2)
            if netrum-import-wallet; then
                show_success "$(get_text "wallet_imported")"
            else
                show_error "Failed to import wallet (Не удалось импортировать кошелек)"
                setup_wallet
                return
            fi
            echo ""
            show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
            read
            ;;
        *)
            show_error "Invalid choice (Неверный выбор)"
            setup_wallet
            ;;
    esac
}

# Check basename
check_basename() {
    show_info "$(get_text "check_basename")"
    netrum-check-basename
    echo ""
    show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
    read
}

# Fix permissions for Netrum CLI commands
fix_permissions() {
    show_info "$(get_text "fix_permissions")"

    # Check if we're in a valid directory
    if ! pwd >/dev/null 2>&1; then
        show_error "Current directory is invalid, changing to /root (Текущая директория недействительна, переходим в /root)"
        cd /root
    fi

    # Find all netrum commands in /usr/local/bin
    NETRUM_COMMANDS=$(find /usr/local/bin -name "netrum*" 2>/dev/null)

    if [ -z "$NETRUM_COMMANDS" ]; then
        show_error "No Netrum commands found in /usr/local/bin (Команды Netrum не найдены в /usr/local/bin)"
        show_info "Trying to find in other locations... (Попытка найти в других местах...)"

        # Try to find in npm global bin
        if command -v npm &> /dev/null; then
            NPM_BIN=$(npm config get prefix 2>/dev/null)/bin
            if [ -d "$NPM_BIN" ]; then
                NETRUM_COMMANDS=$(find "$NPM_BIN" -name "netrum*" 2>/dev/null)
            fi
        fi

        # Try to find in /usr/bin
        NETRUM_COMMANDS="$NETRUM_COMMANDS $(find /usr/bin -name "netrum*" 2>/dev/null)"
    fi

    if [ -z "$NETRUM_COMMANDS" ]; then
        show_error "No Netrum commands found (Команды Netrum не найдены)"
        show_info "Make sure Netrum CLI is properly installed (Убедитесь, что Netrum CLI правильно установлен)"
        show_info "Try running the installation first (Попробуйте сначала запустить установку)"
        return 1
    fi

    show_info "Found Netrum commands (Найдены команды Netrum):"
    echo "$NETRUM_COMMANDS"
    echo ""

    # Fix permissions for each command
    for cmd in $NETRUM_COMMANDS; do
        if [ -f "$cmd" ]; then
            show_info "Fixing permissions for: $cmd"
            if chmod +x "$cmd"; then
                show_success "Permissions fixed for: $cmd"
            else
                show_error "Failed to fix permissions for: $cmd"
                show_info "Trying with sudo..."
                if sudo chmod +x "$cmd"; then
                    show_success "Permissions fixed with sudo for: $cmd"
                else
                    show_error "Failed to fix permissions even with sudo for: $cmd"
                fi
            fi
        fi
    done

    echo ""
    show_success "Permission fix completed (Исправление прав доступа завершено)"
    show_info "Try running your Netrum commands now (Попробуйте запустить команды Netrum сейчас)"
    echo ""
    read -p "$(show_yellow "$(get_text "press_enter")")"
}

# Sign node identity
sign_node() {
    show_info "Signing node identity (Подпись идентичности ноды)..."
    netrum-node-sign
    echo ""
    show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
    read
}

# Register node
register_node() {
    show_info "$(get_text "register_node")"
    netrum-node-register
    echo ""
    show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
    read
}

# Start sync
start_sync() {
    show_info "$(get_text "sync_node")"
    show_warning "Note: This will start sync in background (Примечание: Это запустит синхронизацию в фоне)"

    # Change to the correct directory
    cd /root/netrum-lite-node
    netrum-sync

    show_success "$(get_text "sync_active")"
    echo ""
    show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
    read
}

# Start mining
start_mining() {
    show_info "$(get_text "start_mining")"
    show_warning "Note: This will start mining in background (Примечание: Это запустит майнинг в фоне)"

    # Change to the correct directory
    cd /root/netrum-lite-node
    netrum-mining

    show_success "$(get_text "mining_active")"
    echo ""
    show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
    read
}

# Claim rewards
claim_rewards() {
    show_info "$(get_text "claim_rewards")"
    netrum-claim
    show_success "$(get_text "rewards_available")"
    echo ""
    show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
    read
}

# Remove wallet
remove_wallet() {
    show_warning "⚠️ Remove Wallet (Удалить кошелек)"
    show_warning "This will permanently delete your wallet files! (Это навсегда удалит файлы вашего кошелька!)"
    read -p "$(show_cyan "Are you sure? [y/N] (Вы уверены? [y/N]): ")" confirm

    if [[ $confirm =~ ^[Yy]$ ]]; then
        netrum-wallet-remove
        show_success "Wallet removed (Кошелек удален)"
    else
        show_info "Operation cancelled (Операция отменена)"
    fi
    echo ""
    show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
    read
}

# Clear Node ID
clear_node_id() {
    show_warning "⚠️ Clear Node ID (Очистить ID ноды)"
    show_warning "This will clear your current Node ID! (Это очистит ваш текущий ID ноды!)"
    read -p "$(show_cyan "Are you sure? [y/N] (Вы уверены? [y/N]): ")" confirm

    if [[ $confirm =~ ^[Yy]$ ]]; then
        netrum-node-id-remove
        show_success "Node ID cleared (ID ноды очищен)"
    else
        show_info "Operation cancelled (Операция отменена)"
    fi
    echo ""
    show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
    read
}

# Update CLI
update_cli() {
    show_info "Updating Netrum CLI (Обновление Netrum CLI)..."
    netrum-update
    show_success "CLI updated (CLI обновлен)"
    echo ""
    show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
    read
}

# Stop services
stop_services() {
    show_info "Stopping Netrum services (Остановка сервисов Netrum)..."

    # Stop and disable services
    sudo systemctl stop netrum-node.service 2>/dev/null || true
    sudo systemctl disable netrum-node.service 2>/dev/null || true

    show_success "Services stopped (Сервисы остановлены)"
    echo ""
    show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
    read
}

# Sign and register node
sign_register_node() {
    show_info "Signing and registering node (Подпись и регистрация ноды)..."

    # Sign node identity
    show_info "Step 1: Signing node identity (Шаг 1: Подпись идентичности ноды)..."
    netrum-node-sign
    echo ""
    show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
    read

    # Register node
    show_info "Step 2: Registering node (Шаг 2: Регистрация ноды)..."
    netrum-node-register
    echo ""
    show_info "Press Enter to continue... (Нажмите Enter для продолжения...)"
    read
}



# Show wallet information
show_wallet_info() {
    show_info "$(get_text "wallet_info")"
    netrum-wallet
}

# Show node status
show_node_status() {
    show_info "$(get_text "status")"
    echo ""
    show_white "$(get_text "node_id"):"
    netrum-node-id
    echo ""
    show_white "$(get_text "wallet_info"):"
    netrum-wallet
    echo ""
    show_white "$(get_text "system_status"):"
    netrum-system
}

# Show earnings
show_earnings() {
    show_info "$(get_text "earnings")"
    netrum-wallet
    echo ""
    show_info "To claim rewards use (Для получения наград используйте):"
    show_cyan "netrum-claim"
}

# Health check
health_check() {
    show_info "$(get_text "health_check")"
    netrum-system
}

# Show help commands
show_help_commands() {
    show_info "$(get_text "help_commands")"
    echo ""
    show_white "Main Netrum commands (Основные команды Netrum):"
    show_cyan "• netrum-system          # System status (Статус системы)"
    show_cyan "• netrum-wallet          # Wallet info (Информация о кошельке)"
    show_cyan "• netrum-node-id         # Node ID (ID ноды)"
    show_cyan "• netrum-sync            # Sync (Синхронизация)"
    show_cyan "• netrum-mining          # Mining (Майнинг)"
    show_cyan "• netrum-claim           # Claim rewards (Получение наград)"
    echo ""
    show_white "Log commands (Команды логов):"
    show_cyan "• netrum-sync-log        # Sync logs (Логи синхронизации)"
    show_cyan "• netrum-mining-log      # Mining logs (Логи майнинга)"
    echo ""
    show_white "Wallet commands (Команды кошелька):"
    show_cyan "• netrum-new-wallet      # Create wallet (Создать кошелек)"
    show_cyan "• netrum-import-wallet   # Import wallet (Импортировать кошелек)"
    show_cyan "• netrum-wallet-key      # Export key (Экспорт ключа)"
    show_cyan "• netrum-wallet-remove   # Remove wallet (Удалить кошелек)"
    echo ""
    show_white "Node commands (Команды ноды):"
    show_cyan "• netrum-node-register   # Register node (Регистрация ноды)"
    show_cyan "• netrum-check-basename  # Check Base domain (Проверка Base домена)"
    show_cyan "• netrum-node-sign       # Sign message (Подпись сообщения)"
    echo ""
    show_yellow "Common Issues (Частые проблемы):"
    show_white "• npm warnings about 'node-domexception' are normal and can be ignored (Предупреждения npm о 'node-domexception' - это нормально и их можно игнорировать)"
    show_white "• Permission denied errors can be fixed with option 15 (Fix Permissions) (Ошибки прав доступа можно исправить опцией 15)"
    show_white "• If installation fails, try running commands manually (Если установка не удалась, попробуйте запустить команды вручную)"
}

# Remove Netrum node
remove_netrum() {
    show_warning "⚠️ $(get_text "remove_confirm")"
    read -p "$(show_cyan "$(get_text "yes_no")")" confirm_remove

    if [[ $confirm_remove =~ ^[Yy]$ ]]; then
        show_info "$(get_text "removing")"

        # Remove global link
        sudo npm unlink -g netrum 2>/dev/null || true

        # Remove installation directory
        sudo rm -rf /root/netrum-lite-node

        show_success "$(get_text "removed")"
    else
        show_warning "Removal cancelled (Удаление отменено)"
    fi
}

# Main installation function
main_installation() {
    if is_netrum_installed; then
        show_warning "$(get_text "already_installed")"
        read -p "$(show_cyan "$(get_text "press_enter")")"
        return
    fi

    show_requirements
    read -p "$(show_cyan "$(get_text "continue") $(get_text "yes_no")")" continue_install

    if [[ ! $continue_install =~ ^[Yy]$ ]]; then
        show_warning "Installation cancelled (Установка отменена)"
        return
    fi

    show_info "$(get_text "installing")"

    # Step 1: Clone repository
    show_info "Step 1: Cloning repository (Шаг 1: Клонирование репозитория)..."
    if git clone https://github.com/NetrumLabs/netrum-lite-node.git /root/netrum-lite-node; then
        show_success "Repository cloned successfully (Репозиторий успешно клонирован)"
    else
        show_error "Failed to clone repository (Не удалось клонировать репозиторий)"
        return 1
    fi

    # Step 2: Change to directory
    show_info "Step 2: Changing to directory (Шаг 2: Переход в директорию)..."
    cd /root/netrum-lite-node
    show_success "Changed to /root/netrum-lite-node (Перешли в /root/netrum-lite-node)"

    # Step 3: Update system and install packages
    show_info "Step 3: Updating system and installing packages (Шаг 3: Обновление системы и установка пакетов)..."
    if sudo apt update && sudo apt install -y curl bc jq speedtest-cli nodejs npm; then
        show_success "Packages installed successfully (Пакеты успешно установлены)"
    else
        show_error "Failed to install packages (Не удалось установить пакеты)"
        return 1
    fi

    # Step 4: Check Node.js version
    show_info "Step 4: Checking Node.js version (Шаг 4: Проверка версии Node.js)..."
    NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
    show_info "Current Node.js version: $(node -v) (Текущая версия Node.js: $(node -v))"

    if [ "$NODE_VERSION" -lt 20 ]; then
        show_warning "Node.js version is less than 20, upgrading... (Версия Node.js меньше 20, обновляем...)"

        # Remove old Node.js
        sudo apt remove -y nodejs npm 2>/dev/null || true
        sudo apt purge -y nodejs npm 2>/dev/null || true
        sudo apt autoremove -y 2>/dev/null || true

        # Install Node.js v20
        curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
        sudo apt install -y nodejs

        # Verify installation
        if command -v node &> /dev/null; then
            show_success "Node.js upgraded to: $(node -v) (Node.js обновлен до: $(node -v))"
        else
            show_error "Failed to upgrade Node.js (Не удалось обновить Node.js)"
            return 1
        fi
    else
        show_success "Node.js version is sufficient (Версия Node.js достаточна)"
    fi

    # Step 5: Install dependencies
    show_info "Step 5: Installing dependencies (Шаг 5: Установка зависимостей)..."
    if npm install; then
        show_success "Dependencies installed successfully (Зависимости успешно установлены)"
    else
        show_error "Failed to install dependencies (Не удалось установить зависимости)"
        return 1
    fi

    # Step 6: Link CLI
    show_info "Step 6: Linking CLI (Шаг 6: Связывание CLI)..."
    if sudo npm link; then
        show_success "CLI linked successfully (CLI успешно связан)"
    else
        show_error "Failed to link CLI (Не удалось связать CLI)"
        return 1
    fi

    # Step 7: Setup wallet
    show_info "Step 7: Setting up wallet (Шаг 7: Настройка кошелька)..."
    setup_wallet
    if [ $? -ne 0 ]; then
        show_error "Wallet setup failed (Настройка кошелька не удалась)"
        return 1
    fi

    echo ""
    show_warning "Next Steps (Следующие шаги):"
    show_white "1. Check your wallet (Проверьте ваш кошелек):"
    show_cyan "   netrum-wallet"
    show_white "2. Check your Base domain (Проверьте ваш Base домен):"
    show_cyan "   netrum-check-basename"
    show_white "3. Sign your node identity (Подпишите идентичность ноды):"
    show_cyan "   netrum-node-sign"
    show_white "4. Register your node (Зарегистрируйте вашу ноду):"
    show_cyan "   netrum-node-register"
    show_white "5. Start sync and mining (Запустите синхронизацию и майнинг):"
    show_cyan "   netrum-sync"
    show_cyan "   netrum-mining"
    echo ""
    show_info "Use management menu for easy access to all commands (Используйте меню управления для легкого доступа ко всем командам)"
    echo ""

    read -p "$(show_cyan "$(get_text "press_enter")")"
}

# Management menu
show_management_menu() {
    while true; do
        show_logo
        show_green "$(get_text "manage")"
        echo ""
        show_white "1) $(get_text "status")"
        show_white "2) $(get_text "show_wallet")"
        show_white "3) $(get_text "check_base_domain")"
        show_white "4) $(get_text "sign_register_node")"
        show_white "5) $(get_text "sync_logs")"
        show_white "6) $(get_text "start_mining")"
        show_white "7) $(get_text "mining_logs")"
        show_white "8) $(get_text "earnings")"
        show_white "9) $(get_text "claim_rewards")"
        show_white "10) $(get_text "export_key")"
        show_white "11) $(get_text "remove_wallet")"
        show_white "12) $(get_text "clear_node_id")"
        show_white "13) $(get_text "stop_services")"
        show_white "14) $(get_text "health_check")"
        show_white "15) $(get_text "fix_permissions")"
        show_white "16) $(get_text "help_commands")"
        show_white "0) $(get_text "back")"
        echo ""

        read -p "$(show_cyan "Choice [0-16] (Выбор [0-16]): ")" choice

        case $choice in
            1)
                show_node_status
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            2)
                show_wallet_info
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            3)
                check_basename
                ;;
            4)
                sign_register_node
                ;;
            5)
                cd /root/netrum-lite-node
                netrum-sync
                echo
                read -p "$(show_yellow "$(get_text "press_enter")")"
                netrum-sync-log
                ;;
            6)
                start_mining
                ;;
            7)
                cd /root/netrum-lite-node
                netrum-mining
                echo
                read -p "$(show_yellow "$(get_text "press_enter")")"
                netrum-mining-log
                ;;
            8)
                show_earnings
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            9)
                claim_rewards
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            10)
                netrum-wallet-key
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            11)
                remove_wallet
                ;;
            12)
                clear_node_id
                ;;
            13)
                stop_services
                ;;
            14)
                health_check
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            15)
                fix_permissions
                ;;
            16)
                show_help_commands
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            0)
                return
                ;;
            *)
                show_error "$(get_text "invalid_choice")"
                sleep 2
                ;;
        esac
    done
}

# Main menu
show_main_menu() {
    while true; do
        show_logo
        show_green "$(get_text "main_menu")"
        echo ""
        show_white "1) 🚀 $(get_text "install")"
        show_white "2) ⚙️ $(get_text "manage")"
        show_white "3) 🔄 $(get_text "update_cli")"
        show_white "4) 🗑️ $(get_text "remove")"
        show_white "0) ❌ $(get_text "exit")"
        echo ""

        read -p "$(show_cyan "Choice [0-4] (Выбор [0-4]): ")" choice

        case $choice in
            1)
                main_installation
                ;;
            2)
                if is_netrum_installed; then
                    show_management_menu
                else
                    show_error "$(get_text "not_installed")"
                    read -p "$(show_cyan "$(get_text "press_enter")")"
                fi
                ;;
            3)
                if is_netrum_installed; then
                    update_cli
                else
                    show_error "$(get_text "not_installed")"
                    read -p "$(show_cyan "$(get_text "press_enter")")"
                fi
                ;;
            4)
                if is_netrum_installed; then
                    remove_netrum
                    read -p "$(show_cyan "$(get_text "press_enter")")"
                else
                    show_error "$(get_text "not_installed")"
                    read -p "$(show_cyan "$(get_text "press_enter")")"
                fi
                ;;
            0)
                show_success "Goodbye! (До свидания!)"
                exit 0
                ;;
            *)
                show_error "$(get_text "invalid_choice")"
                sleep 2
                ;;
        esac
    done
}

# Main function
main() {
    show_main_menu
}

# Run main function
main "$@"
