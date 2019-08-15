happy_trigger
=============

serve
-----
>serve rails on falcon securely (https)

but you didint setup https, this will cause access error.
```sh
bundle exec falcon serve
```

### serve dev
>serve rails on falcon insecurely (http)

```sh
bundle exec falcon serve -b http://localhost:9292
```

migrate
-------
>apply schema of ridgepole from db/Schemafile. but this is dry-run. if you want to apply, do `mask migrate do`

```sh
bundle exec ridgepole -c config/database.yml -E development --apply -f db/Schemafile --dry-run
```

### migrate do
>actually do to apply from db/Schemafile

```sh
bundle exec ridgepole -c config/database.yml -E development --apply -f db/Schemafile
```
