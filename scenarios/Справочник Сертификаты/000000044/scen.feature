﻿Если выражение внутреннего языка '$$ФункционалСертификатов$$' Истинно Тогда
        И В командном интерфейсе я выбираю 'Регистратура' 'Виды сертификатов'
        Тогда открылось окно 'Виды сертификатов'
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Сертификат на услуги'
        И я изменяю флаг с именем 'ОграничиватьПоДнямНедели'
        И в таблице "Услуги" я активизирую поле с именем "УслугиНомерСтроки"
        И я перехожу к закладке с именем "ГруппаДниНедели"
        И в поле с именем 'ОбщееВремяНачала' я ввожу текст [ВремяНачала]
        И в поле с именем 'ОбщееВремяОкончания' я ввожу текст [ВремяОкончания]
        И я нажимаю на кнопку с именем 'КнопкаПрименитьОбщееВремя'
        И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
        И я жду закрытия окна 'Сертификат на услуги *' в течение 10 секунд
КонецЕсли
