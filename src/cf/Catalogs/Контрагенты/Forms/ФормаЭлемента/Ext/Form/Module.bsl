﻿
&НаСервере
Процедура ПередЗаписьюНаСервере1(Отказ, ТекущийОбъект, ПараметрыЗаписи)        Экспорт
	
	Сообщить("Перед записью на сервере");
	ТекуЩийОбъект.ДополнительныеСвойства.Вставить("Тест",ТекущаяДата());
	
	НазваниеПроцедуры = Буфер;
	
	Если ЗначениеЗаполнено(НазваниеПроцедуры) Тогда
		Выполнить(НазваниеПроцедуры+"(Отказ,ТекущийОбъект,ПараметрыЗаписи)");
	Иначе
		Сообщить("Хрен тебе");
	КонецЕсли;	
		
КонецПроцедуры

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Буфер = ЭтаФорма.ПолучитьДействие("ПередЗаписьюНаСервере");
	ЭтаФорма.УстановитьДействие("ПередЗаписьюНаСервере","ПередЗаписьюНаСервере1");	
	
	
КонецПроцедуры

&НаСервере
Процедура ПередЗаписьюНаСервере(Отказ, ТекущийОбъект, ПараметрыЗаписи)
	
	Сообщить("Происходит НЙХ");
	
КонецПроцедуры
