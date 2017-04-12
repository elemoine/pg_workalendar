-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION workalendar" to load this file. \quit

CREATE OR REPLACE FUNCTION workon(venv text)
  RETURNS void AS
$BODY$
    import os
    activate_this = os.path.join(venv, 'bin', 'activate_this.py')
    exec(open(activate_this).read(), dict(__file__=activate_this))
$BODY$
LANGUAGE plpython3u VOLATILE;

CREATE TYPE holiday AS (
    date date,
    name text
);

CREATE OR REPLACE FUNCTION holidays(year int)
  RETURNS SETOF holiday AS
$BODY$
    from datetime import date
    from workalendar.europe import France
    cal = France()
    for holiday in cal.holidays(year):
        yield holiday
$BODY$
LANGUAGE plpython3u VOLATILE;
