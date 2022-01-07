# FORMULA 1 DATABASE

## Contributors 

[Rohan M](https://github.com/rohanmrb)<br>
[Royston](https://github.com/lucasace)

This repository contains the source code for the Formula-1 Database.

## Back-End Database
For the following project we have used `postgresql` as the database.

The Database is a collection of data from the Formula-1 2021 World Championship.

The database contains the following tables:
1. Drivers
2. Teams
3. Circuits
4. Manufacurers
5. Driver's Standings
6. Constructor's Standings
7. Sponsors
8. Race Control

For further details regarding ER diagram and schema please refer to the ```res``` folder

The database creation and sample values for the tables have been provided in the ```src\database``` folder

## Front-End Website
For the following project we have used `uvicorn` as the server and `Flask` as the web framework.

We have used `psycopg2` as the database connector and `fastapi` as the API framework.

The source code for the website is provided in the ```src``` folder.

Use the following command to start the server on your local machine:
 ```
. uvicorn app:app --reload
```

# Conclusion

The performance analysis of the queries in the projects is provided in the ```report``` folder.<br>

## All the additional details regarding the project are provided in the ```docs``` folder.

Please raise a Github issue if you have any questions or suggestions.

