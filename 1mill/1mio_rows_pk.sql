\timing on
\set autocommit on
truncate table DEMO_PK;
DO $$DECLARE
    l_alphabet_array varchar(15)[13] := '{"alpha","beta","gamma","delta","eta","theta","iota","kappa","lambda","mu","nu","rho","tau"}';
    n int;
    BEGIN
        for i in 0..1e6 loop
            n:=trunc(random()*1000+1);
            insert into DEMO_PK values( i , l_alphabet_array[floor((random()*11))+1::int] , n  );
        end loop;
    END$$;
