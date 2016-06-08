create extension pg_stat_statements;
\dx

show shared_preload_libraries;
alter system set shared_preload_libraries='pg_stat_statements';

select name,pending_restart from pg_settings where name in ('shared_preload_libraries');

select pg_reload_conf();
show pg_stat_statements.max;
show pg_stat_statements.track;
show pg_stat_statements.track_utility;
show pg_stat_statements.save;

\d pg_stat_statements

\x

select userid,query,calls,total_time from pg_stat_statements;

select * from pg_stat_statements(true);

