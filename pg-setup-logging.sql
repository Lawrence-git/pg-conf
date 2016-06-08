alter system set logging_collector=on;
alter system set log_filename='postgresql-%Y-%m-%d_%H%M%S.log';
alter system set log_duration=on;
alter system set log_min_duration_statement=0;

select pg_reload_conf();

show logging_collector;
show log_directory;
show log_filename;
show log_rotation_size;
show log_rotation_age;

create table tt ( a int  );
insert into tt (a) values (generate_series(1,1000));
select count(*) from tt;
