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

```
SELECT * from workalendar.holidays(2017);
```
