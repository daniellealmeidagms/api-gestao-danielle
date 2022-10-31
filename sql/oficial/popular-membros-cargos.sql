alter table membros_cargos
add column "dataEntradaCargo" date;

insert into  membros_cargos ("membros_id","cargos_id", "dataEntradaCargo")
values 
    ('2', '3', '01/03/2020'),
    ('4', '3', '01/03/2020'),
    ('6', '3', '01/03/2020'),
    ('8', '3', '01/03/2020'),
    ('1', '1', '01/03/2020'),
    ('3', '4', '01/03/2020'),
    ('2', '5', '01/03/2020');
    