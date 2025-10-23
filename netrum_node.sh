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

    # Suppress VM warnings and update system
    sudo apt update 2>/dev/null || true
    sudo apt upgrade -y 2>/dev/null || true

    show_success "System updated (Система обновлена)"
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
        nodejs
        npm
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
        fi
    fi

    # Install Node.js v20
    curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
    sudo apt install -y nodejs

    show_success "Node.js v20 installed (Node.js v20 установлен)"
}

# Clone and setup Netrum repository
setup_netrum_repo() {
    show_info "$(get_text "cloning_repo")"

    # Clone repository
    git clone https://github.com/NetrumLabs/netrum-lite-node.git /opt/netrum-lite-node
    cd /opt/netrum-lite-node

    show_info "$(get_text "installing_deps")"
    npm install

    show_info "$(get_text "linking_cli")"
    sudo npm link

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
            netrum-new-wallet
            show_success "$(get_text "wallet_created")"
            ;;
         2)
            netrum-import-wallet
            show_success "$(get_text "wallet_imported")"
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
}

# Register node
register_node() {
    show_info "$(get_text "register_node")"
    netrum-node-register
    show_success "$(get_text "node_registered")"
}

# Start sync
start_sync() {
    show_info "$(get_text "sync_node")"
    show_warning "Note: This will start sync in background (Примечание: Это запустит синхронизацию в фоне)"
    netrum-sync
    show_success "$(get_text "sync_active")"
}

# Start mining
start_mining() {
    show_info "$(get_text "start_mining")"
    show_warning "Note: This will start mining in background (Примечание: Это запустит майнинг в фоне)"
    netrum-mining
    show_success "$(get_text "mining_active")"
}

# Claim rewards
claim_rewards() {
    show_info "$(get_text "claim_rewards")"
    netrum-claim
    show_success "$(get_text "rewards_available")"
}

# View logs
view_logs() {
    if is_node_running; then
        show_info "📋 Netrum Lite Node Logs (Логи Netrum Lite Node):"
        show_yellow "═══════════════════════════════════════════════════════════════"
        netrum-system
        show_yellow "═══════════════════════════════════════════════════════════════"
        echo ""
        show_info "For sync logs (Для просмотра логов синхронизации):"
        show_cyan "netrum-sync-log"
        show_info "For mining logs (Для просмотра логов майнинга):"
        show_cyan "netrum-mining-log"
    else
        show_error "Node is not running (Нода не запущена)"
    fi
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
        sudo rm -rf /opt/netrum-lite-node

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

    update_system
    install_packages
    install_nodejs
    setup_netrum_repo
    setup_wallet
    check_basename
    register_node

    echo ""
    show_warning "Important (Важно):"
    show_white "• Complete wallet setup and node registration first (Сначала завершите настройку кошелька и регистрацию ноды)"
    show_white "• Then use management menu to start sync and mining (Затем используйте меню управления для запуска синхронизации и майнинга)"
    show_white "• Use 'netrum-sync' and 'netrum-mining' commands manually (Используйте команды 'netrum-sync' и 'netrum-mining' вручную)"
    show_white "• Rewards can be claimed every 24 hours (Награды можно получать каждые 24 часа)"
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
        show_white "2) $(get_text "logs")"
        show_white "3) $(get_text "sync_logs")"
        show_white "4) $(get_text "mining_logs")"
        show_white "5) $(get_text "earnings")"
        show_white "6) $(get_text "claim_rewards")"
        show_white "7) $(get_text "health_check")"
        show_white "8) $(get_text "show_wallet")"
        show_white "9) $(get_text "export_key")"
        show_white "10) $(get_text "help_commands")"
        show_white "0) $(get_text "back")"
        echo ""

        read -p "$(show_cyan "Choice [0-10] (Выбор [0-10]): ")" choice

        case $choice in
            1)
                show_node_status
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            2)
                view_logs
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            3)
                netrum-sync-log
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            4)
                netrum-mining-log
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            5)
                show_earnings
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            6)
                claim_rewards
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            7)
                health_check
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            8)
                show_wallet_info
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            9)
                netrum-wallet-key
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            10)
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
        show_white "3) 🗑️ $(get_text "remove")"
        show_white "0) ❌ $(get_text "exit")"
        echo ""

        read -p "$(show_cyan "Choice [0-3] (Выбор [0-3]): ")" choice

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
