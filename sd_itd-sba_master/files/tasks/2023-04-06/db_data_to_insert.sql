-- select *
-- from users u
-- where u.last_name ilike :?;


-- select distinct t.*
-- from tasks t
--          left join category c on t.category = c.id
--          left join users u on t.user_id = u.id
--          join users w on t.worker_id = w.id
-- where t.name_task ilike :nameTask
--   and cast(t.id as char) ilike :id
--   and cast(t.status as char) like :statusTask
--   and c.name_category ilike :nameCategory
--   and u.last_name ilike :userFio
--   and w.last_name ilike :workerFio;

--РОЛИ
insert into role
values (1, null, null, null, null, false, 'Пользователь', 'USER'),
       (2, null, null, null, null, false, 'Сотрудник-исполнитель', 'EXECUTOR'),
       (3, null, null, null, null, false, 'Вед. сотрудник-исполнитель', 'MAIN_EXECUTOR'),
       (4, null, null, null, null, false, 'Администратор', 'ADMIN');

--Группы
insert into groups
values (1, null, null, null, null, false, 'Пользователи'),
       (2, null, null, null, null, false, 'Техническая поддержка'),
       (3, null, null, null, null, false, 'Системные администраторы');
--SLA
insert into sla
values (1, null, null, null, null, false, 2, 'Инциндент (высокий)', 1),
       (2, null, null, null, null, false, 4, 'Инциндент (обычный)', 1),
       (3, null, null, null, null, false, 8, 'Инциндент (низкий)', 2),
       (4, null, null, null, null, false, 8, 'Обслуживание (высокий)', 2),
       (5, null, null, null, null, false, 16, 'Обслуживание (обычный)', 4),
       (6, null, null, null, null, false, 40, 'Обслуживание (низкий)', 8),
       (7, null, null, null, null, false, 16, 'Доступ', 4),
       (8, null, null, null, null, false, 240, 'Приобретение', 16);
--Типы заявок
insert into type_task
values (1, null, null, null, null, false, 'Инциндент (общий)', 1),
       (2, null, null, null, null, false, 'Обслуживание (общее)', 4),
       (3, null, null, null, null, false, 'Доступ', 7),
       (4, null, null, null, null, false, 'Приобритение', 8),
       (5, null, null, null, null, false, 'Инциндент сис. админ.', 1),
       (6, null, null, null, null, false, 'Инциндент ПО', 2);

--Категории заявок
insert into category
values (1, null, null, null, null, false, 'Системная категория', null),
       (2, null, null, null, null, false, 'Администрирование систем', null),
       (3, null, null, null, null, false, 'Адм. серверного оброруд.', 1),
       (4, null, null, null, null, false, 'Адм. сетевого оборуд.', 1),
       (5, null, null, null, null, false, 'Тоговое оборудование', null),
       (6, null, null, null, null, false, 'Приобретение', null);

insert into locations
values (1, null, null, null, null, false, 'Центральный офис'),
       (2, null, null, null, null, false, 'Главный склад'),
       (3, null, null, null, null, false, 'Магазин');

insert into users
values (1, null, null, null, null, false, null, 'admin@servicedesk.ru', 'учетная', 'Системная', 'service', 'запись',
        '$2a$10$HHdPd716i5B6Ci5qdNJMoe.Yhl7it3MxX8rU0JzPeRAc4kd5HpqNu', null, false, 1, 3, 2),
       (2, null, null, null, null, false, null, 'ivanov@mail.ru', 'Иван', 'Иванов', 'ivanov', 'Иванович',
        '$2a$10$6ZdDup03pD/2d2WqozOEtuGDU6yHj28jcUqQk.ocNGAYQNJ0c4NNq', '+79235555656', false, 1, 3, 1),
       (3, null, null, null, null, false, null, 'petrov@mail.ru', 'Петр', 'Петров', 'petrov', 'Петрович',
        '$2a$10$6ZdDup03pD/2d2WqozOEtuGDU6yHj28jcUqQk.ocNGAYQNJ0c4NNq', '+79235555677', true, 1, 3, 1),
       (4, null, null, null, null, false, null, 'sidorov@mail.ru', 'Сидор', 'Сидоров', 'sidorov', 'Сидорович',
        '$2a$10$6ZdDup03pD/2d2WqozOEtuGDU6yHj28jcUqQk.ocNGAYQNJ0c4NNq', '+79235555688', false, 1, 3, 1),
       (5, null, null, null, null, false, null, 'greekkk@mail.ru', 'Борис', 'Степаненко', 'greek', 'Алексеевич',
        '$2a$10$fm.NURcqO0l4W4jmvotQjO6abp0QCt3BKrIoI.mZ6ruyNUB9fS5r2', '+79235555688', false, 2, 2, 2),
       (6, null, null, null, null, false, null, 'ignatevvk@mail.ru', 'Вячеслав', 'Игнатьев', 'ignatevvk', 'Константинович',
        '$2a$10$fm.NURcqO0l4W4jmvotQjO6abp0QCt3BKrIoI.mZ6ruyNUB9fS5r2', '+79915035031', false, 2, 2, 2);

insert into tasks
values (1, null, null, null, null, false, '2022-11-15 13:46:11.797607', null,
        'Не работает ноутбук, переодичеки синий экран',
        '2022-12-15 13:46:11.797607', null, 'Не работает ноутбук', 2, 2, 1, 2, 2, 3);