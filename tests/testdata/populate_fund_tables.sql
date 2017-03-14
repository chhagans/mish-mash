-- todo: use faker/seeder/db factory to create test entries eventually

--note: to be run on postgres db
truncate funds;

insert into funds values (nextval('funds_id_seq'),'Fund One','Fund','FD1',now(),now());
insert into funds values (nextval('funds_id_seq'),'Fund Two','Fund','FD2',now(),now());
insert into funds values (nextval('funds_id_seq'),'Bond One','Bond','FD1',now(),now());
insert into funds values (nextval('funds_id_seq'),'Bond Two','Bond','FD1',now(),now());
insert into funds values (nextval('funds_id_seq'),'Company One','Equity','CO1',now(),now());
insert into funds values (nextval('funds_id_seq'),'Company Two','Equity','CO2',now(),now());

truncate fund_values;

insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Fund One'),104.00, (now() - interval '5 day'),(now() - interval '5 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Fund One'),103.00, (now() - interval '4 day'),(now() - interval '4 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Fund One'),101.00, (now() - interval '3 day'),(now() - interval '3 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Fund One'),102.00, (now() - interval '2 day'),(now() - interval '2 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Fund One'),101.00, (now() - interval '1 day'),(now() - interval '1 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Fund One') ,100.00, now(),now());

insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Fund Two'),105.00, (now() - interval '5 day'),(now() - interval '5 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Fund Two'),104.00, (now() - interval '4 day'),(now() - interval '4 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Fund Two'),103.00, (now() - interval '3 day'),(now() - interval '3 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Fund Two'),106.00, (now() - interval '2 day'),(now() - interval '2 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Fund Two'),102.00, (now() - interval '1 day'),(now() - interval '1 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Fund Two') ,101.00, now(),now());

insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Bond One'),104.00, (now() - interval '5 day'),(now() - interval '5 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Bond One'),103.00, (now() - interval '4 day'),(now() - interval '4 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Bond One'),100.00, (now() - interval '3 day'),(now() - interval '3 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Bond One'),102.00, (now() - interval '2 day'),(now() - interval '2 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Bond One'),98.00, (now() - interval '1 day'),(now() - interval '1 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Bond One') ,94.00, now(),now());

insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Bond Two'),103.00, (now() - interval '5 day'),(now() - interval '5 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Bond Two'),101.00, (now() - interval '4 day'),(now() - interval '4 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Bond Two'),104.00, (now() - interval '3 day'),(now() - interval '3 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Bond Two'),109.00, (now() - interval '2 day'),(now() - interval '2 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Bond Two'),105.00, (now() - interval '1 day'),(now() - interval '1 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Bond Two') ,104.00, now(),now());

insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Company One'),114.00, (now() - interval '5 day'),(now() - interval '5 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Company One'),113.00, (now() - interval '4 day'),(now() - interval '4 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Company One'),111.00, (now() - interval '3 day'),(now() - interval '3 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Company One'),112.00, (now() - interval '2 day'),(now() - interval '2 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Company One'),111.00, (now() - interval '1 day'),(now() - interval '1 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Company One') ,110.00, now(),now());

insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Company Two'),98.00, (now() - interval '5 day'),(now() - interval '5 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Company Two'),95.00, (now() - interval '4 day'),(now() - interval '4 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Company Two'),96.00, (now() - interval '3 day'),(now() - interval '3 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Company Two'),99.00, (now() - interval '2 day'),(now() - interval '2 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Company Two'),98.00, (now() - interval '1 day'),(now() - interval '1 day'));
insert into fund_values values (nextval('fund_values_id_seq'), (select id from funds where name = 'Company Two') ,97.00, now(),now());

truncate user_funds;

--example (user id = 1)
insert into user_funds values (nextval('user_funds_id_seq'),1,(select id from funds where name = 'Fund One'),now(),now());
insert into user_funds values (nextval('user_funds_id_seq'),1,(select id from funds where name = 'Bond One'),now(),now());
insert into user_funds values (nextval('user_funds_id_seq'),1,(select id from funds where name = 'Company Two'),now(),now());

commit;
