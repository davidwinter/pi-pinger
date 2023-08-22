# pi-pinger

> Send heartbeat pings to 3rd parties to get notified if your pi goes down

Having a home lab Raspberry Pi is great! Though it sucks if it goes down and you don't find out about it until you're left wondering why you can't access something or your Pi-Hole connection stops working.

`pi-pinger` lets you setup external monitoring services for "push" tests. Every minute, the `pi-pinger` will notify the configured test URLs so that they know your Raspberry Pi is still up and running, and notify you if it ever goes down where the tests haven't been sent.

## Usage

```sh
curl https://raw.githubusercontent.com/davidwinter/pi-pinger/main/compose.prod.yml -o compose.yml
```

Edit the ping URLs value in `compose.yml` with one or more URLs you wish to use. I would recommend any or all of the below, which offer a free plan with at least one free monitor that you can set as a Push test alert:

- 🍰 [Status Cake](https://www.statuscake.com/)
- 🕵️ [Dead Man's Snitch](https://deadmanssnitch.com)
- 📈 [Cronitor](https://cronitor.io)

Then run:

```sh
docker compose up -d
```

So long as your Docker install is enabled to start at boot time, then `pi-pinger` will launch with reboots automatically.
