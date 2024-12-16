Need to SSH into every device and update inform url

```bash
ssh ubnt@<ip-address>
password: ubnt
```

```bash
set-inform http://unifi-mgmt.${SECRET_DOMAIN}:8080/inform
```
