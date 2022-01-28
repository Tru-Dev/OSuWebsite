# OSu Website

This website is for a school project at EVIT. It is meant to be a homepage for
[OSu](https://github.com/Lt1Gt0/OSu), which is an operating system that is meant
to play osu.

## Run it

Docker is the easiest way to host this application for yourself. These instructions will be built
around Docker.

You will need to generate 2 keys, one for the actual application (secret key), and another for the
PostgreSQL database. Both will go in `.env` at the root of the repository (see
[`example.env`](example.env)). The database password will also go in a file `pgpass.txt`
(at repo root), while the secret key will go in a file called `secret.txt` as well.

Once that is done, run `docker compose up`. It should work now, go to
[localhost:4000](http://localhost:4000) to see the results.
