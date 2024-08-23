# The Gorge of Eternal Peril

Presented at the Carolina Code Conference 2024

## To Install

Make sure you have Perl on your system. If not, check out
[Perlbrew](https://perlbrew.pl).

Install necessary modules:
```
sudo cpan install Dancer2 Dancer2::Plugin::Database DBD::SQLite
```

Run any remaining commands in the `Gorge` directory.

Setup the database:
```
sqlite3 db/gorge.db < db/schema.sql
sqlite3 db/gorge.db < db/questions.sql
```

To run: `plackup bin/app.psgi`

If you're already a Perl person, I can't help you anymore :-)

