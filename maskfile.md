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
