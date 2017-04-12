# Workalendar PostgreSQL extension

Install the `workalendar` Python package:

```shell
$ pip install workalendar   # may be installed in a virtual env
```

Create extension in database:

```sql
CREATE EXTENSION IF NOT EXISTS workalendar CASCADE;
```

Activate virtual env if `workalendar` was installed in a virtual env:

```sql
SELECT workalendar.workon('/patch/to/virtual/env');
```

Get the french holidays for a given year:

```sql
SELECT * from workalendar.holidays(2017);
    date    |             name
------------+------------------------------
 2017-01-01 | New year
 2017-04-17 | Easter Monday
 2017-05-01 | Labour Day
 2017-05-08 | Victory in Europe Day
 2017-05-25 | Ascension Thursday
 2017-06-05 | Whit Monday
 2017-07-14 | Bastille Day
 2017-08-15 | Assumption of Mary to Heaven
 2017-11-01 | All Saints Day
 2017-11-11 | Armistice Day
 2017-12-25 | Christmas Day
(11 rows)

```
