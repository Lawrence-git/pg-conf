alter system set logging_collector=on;
alter system set log_filename='postgresql-%Y-%m-%d_%H%M%S.log';
alter system set log_duration=on;
alter system set log_min_duration_statement=0;
alter system set shared_preload_libraries = 'pg_stat_statements';
--alter system set pg_stat_statements.track = all;

alter system set log_min_duration_statement = 250ms
alter system set log_checkpoints = on
alter system set log_connections = on
alter system set log_disconnections = on
alter system set log_lock_waits = on
alter system set log_temp_files = 0


select pg_reload_conf();

show logging_collector;
show log_directory;
show log_filename;
show log_rotation_size;
show log_rotation_age;
show log_min_duration_statement;
show log_checkpoints;
show log_connections;
show log_disconnections;
show log_lock_waits;
show log_temp_files;

show shared_preload_libraries;
show pg_stat_statements.track;

create table tt ( a int  );
insert into tt (a) values (generate_series(1,1000));
select count(*) from tt;
