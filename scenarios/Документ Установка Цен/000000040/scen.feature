﻿И В командном интерфейсе я выбираю 'Ценообразование' 'Установка цен'
Тогда открылось окно 'Установка цен'
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Установка цен № * от * Цены прейскурантов.  Записан'
И я нажимаю на кнопку с именем 'НоменклатураКнопкаЗаполнитьПоГруппе'
Тогда открылось окно 'Номенклатура'
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Установка цен № * от * Цены прейскурантов.  Записан'
И я запоминаю количество строк таблицы "Номенклатура" как "КоличествоНоменклатуры"
И я удаляю все строки таблицы "Номенклатура"
И я нажимаю на кнопку с именем 'НоменклатураКнопкаЗаполнитьПоГруппе'
Тогда открылось окно 'Номенклатура'
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Установка цен № * от * Цены прейскурантов.  Записан *'
Цикл И я делаю "$КоличествоНоменклатуры$" раз
        И в таблице "Номенклатура" я активизирую поле с именем "НоменклатураЦена"
        И в таблице "Номенклатура" я выбираю текущую строку
        И в таблице "Номенклатура" в поле с именем 'НоменклатураЦена' я ввожу текст [ЦенаНоменклатуры]
        И в таблице "Номенклатура" я завершаю редактирование строки
        Попытка
                И в таблице "Номенклатура" я перехожу к следующей строке
        Исключение
                И я прерываю цикл
        КонецПопытки
КонецЦикла

Если переменная "$ДоступностьСертификатов$" имеет значение "Истина" Тогда
        И я перехожу к закладке с именем "ГруппаСертификаты"
        И в таблице "Сертификаты" я нажимаю на кнопку с именем 'СертификатыДобавить'
        И в таблице "Сертификаты" из выпадающего списка с именем "СертификатыВидСертификата" я выбираю по строке [ВидСертификата]
        И в таблице "Сертификаты" я активизирую поле с именем "СертификатыЦена"
        И в таблице "Сертификаты" в поле с именем 'СертификатыЦена' я ввожу текст [ЦенаСертификата]
        И в таблице "Сертификаты" я завершаю редактирование строки
КонецЕсли

И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Установка цен №  от * Цены прейскурантов.  Записан *' в течение 10 секунд
