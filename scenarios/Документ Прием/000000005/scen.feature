
Если в таблице 'Список' поле 'Состояние' имеет значение 'Отменена' Тогда
        Попытка
                Когда я нажимаю на кнопку с именем 'ФормаДокументПриемСоздатьНаОсновании'
                Тогда открылось окно '1С:Предприятие'
#Что делать если выдало предупреждение
        Исключение
                И я закрываю все окна клиентского приложения
                И В командном интерфейсе я выбираю 'Регистратура' 'Заявки'
                Тогда открылось окно 'Заявки'
                И я регистрирую ошибку по данным исключения 'Нельзя создавать документ "Прием" на основании отмененной заявки'
        КонецПопытки
Иначе

        И я нажимаю на кнопку с именем 'ФормаДокументПриемСоздатьНаОсновании'
        Тогда открылось окно 'Прием № * от * Новый'
        И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
КонецЕсли
