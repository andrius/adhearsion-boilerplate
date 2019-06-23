Adhearsion boilerplate application
==================================

By using this repo, you'll get your VoIP development environment with adhearsion and asterisk or freeswitch bootstraped just in minute.

Example of usage:

```bash
./setup /tmp/test asterisk
cd /tmp/test
docker-compose run --service-ports --rm ahn
```

# TODO

- [x] README
- [x] Asterisk script
- [ ] Freeswitch script
- [ ] pjsua (cli SIP client)
