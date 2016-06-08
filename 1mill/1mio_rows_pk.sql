\timing on
\set autocommit on
truncate table DEMO_PK;
DO $$DECLARE
    l_people_array varchar(15)[12] := '{"Marc", "Bill", "George", "Eliot", "Matt", "Trey", "Tracy","Greg", "Steve", "Kristina", "Katie", "Jeff"}';
    n int;
    BEGIN
        for i in 0..1e6 loop
            n:=trunc(random()*1000+1);
            insert into DEMO_PK values( i , l_people_array[floor((random()*11))+1::int] , n  );
        end loop;
    END$$;
