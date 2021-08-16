-- Install pg_trgm
CREATE EXTENSION pg_trgm;

-- Install zhparser
CREATE EXTENSION zhparser;
CREATE TEXT SEARCH CONFIGURATION pg_catalog.chinese (PARSER = zhparser);
ALTER TEXT SEARCH CONFIGURATION chinese ADD MAPPING FOR n,v,a,i,e,l WITH simple;

--- Install pg_stat_statements
CREATE EXTENSION pg_stat_statements;
