﻿Если выражение внутреннего языка '$$ФункционалСертификатов$$' Истинно Тогда
        И В командном интерфейсе я выбираю 'Регистратура' 'Виды сертификатов'
        Тогда открылось окно 'Виды сертификатов'
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Сертификат на услуги'
        И в поле с именем 'Наименование' я ввожу текст [ИзмененноеНаименованиеСертификата]
        И в поле с именем 'Номинал' я ввожу текст [ИзмененныйНоминал]
        И в поле с именем 'СрокДействия' я ввожу текст [ИзмененныйСрокДействия]
        И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
        И я жду закрытия окна 'Сертификат на услуги *' в течение 10 секунд
КонецЕсли
