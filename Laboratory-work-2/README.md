## Лабораторная работа 2

### Задание.
- По варианту, выданному преподавателем, составить и выполнить запросы к базе данных "Учебный процесс".
- Команда для подключения к базе данных ucheb: psql -h pg -d ucheb

### Вариант 6548
- Составить запросы на языке SQL (пункты 1-7).
1. Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:
Таблицы: Н_ЛЮДИ, Н_ВЕДОМОСТИ.
Вывести атрибуты: Н_ЛЮДИ.ФАМИЛИЯ, Н_ВЕДОМОСТИ.ИД.
Фильтры (AND):
a) Н_ЛЮДИ.ОТЧЕСТВО = Александрович.
b) Н_ВЕДОМОСТИ.ЧЛВК_ИД > 153285.
Вид соединения: LEFT JOIN.

2. Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:
Таблицы: Н_ЛЮДИ, Н_ОБУЧЕНИЯ, Н_УЧЕНИКИ.
Вывести атрибуты: Н_ЛЮДИ.ИД, Н_ОБУЧЕНИЯ.ЧЛВК_ИД, Н_УЧЕНИКИ.ИД.
Фильтры: (AND)
a) Н_ЛЮДИ.ИД < 100865.
b) Н_ОБУЧЕНИЯ.ЧЛВК_ИД < 112514.
c) Н_УЧЕНИКИ.ГРУППА = 3100.
Вид соединения: RIGHT JOIN.

3. Составить запрос, который ответит на вопрос, есть ли среди студентов ФКТИУ люди без ИНН.

4. Выдать различные имена студентов и число людей с каждой из этих имен, ограничив список именами, встречающимися менее 50 раз на на заочной форме обучения.
Для реализации использовать соединение таблиц.

5. Выведите таблицу со средним возрастом студентов во всех группах (Группа, Средний возраст), где средний возраст равен минимальному возрасту в группе 3100.

6. Получить список студентов, зачисленных до первого сентября 2012 года на первый курс очной формы обучения. В результат включить:
номер группы;
номер, фамилию, имя и отчество студента;
номер и состояние пункта приказа;
Для реализации использовать подзапрос с IN.

7. Вывести список студентов, имеющих одинаковые имена, но не совпадающие ид.