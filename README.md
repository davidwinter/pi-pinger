# pi-pinger

> Send heartbeat pings to 3rd parties to get notified if your pi goes down

Having a home lab Raspberry Pi is great! Though it sucks if it goes down and you don't find out about it until you're left wondering why you can't access something or your Pi-Hole connection stops working.

`pi-pinger` lets you setup external monitoring services for "push" tests. Every minute, the `pi-pinger` will notify the configured test URLs so that they know your Raspberry Pi is still up and running, and notify you if it ever goes down where the tests haven't been sent.

## Usage

Create a copy of the `.env.example` file to `.env`:

```sh
cp .env.example .env
```

Edit `.env` and add a URL per line for the `PUSH_URLS` value, for example:

```sh
PING_URLS="https://nosnch.in/example
https://push.statuscake.com/?PK=example&TestID=example&time=0
https://cronitor.link/p/example/my-pi"
```

Run `pi-pinger` with:

```sh
docker compose up -d
```

So long as your Docker install is enabled to start at boot time, then `pi-pinger`` will launch with reboots automatically.

***

Running crons within docker: https://blog.thesparktree.com/cron-in-docker
