# MacTroll
Программа для троллинга пользователей Mac, использующая `launchprogresswindow` из установщика macOS Monterey 
для показа окна загрузки системы на какое-то время.

## Совместимость
Программа должна работать на macOS Monterey и выше.
Проверено на macOS Monterey, macOS Ventura и macOS Sequoia.

## Как использовать
1. Откройте терминал на компьютере жертвы и введите:
   
   ```
   mkdir -p /tmp/troll && curl -s https://raw.githubusercontent.com/denis0001-dev/MacTroll/refs/heads/main/run.sh > /tmp/troll/run.sh && chmod +x /tmp/troll/run.sh && /tmp/troll/run.sh
   ```
2. Введите кол-во секунд, на которое показать экран загрузки.

После этого экран загрузки будет висеть на указанное кол-во секунд.

## Коды ошибок
_Эти коды ошибок отосятся к скрипту `troll.sh`._
| Код | Описание                                         | Исправление                                                          |
|-----|--------------------------------------------------|----------------------------------------------------------------------|
| `1` | Нет времени в секундах                           | Укажите время в секундах после `troll.sh`.                           |
| `2` | Нет файла `launchprogresswindow` в текущей папке | Перейдите в папку репозитория через `cd <путь до папки репозитория>` |
