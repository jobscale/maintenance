#### run with container

```bash
git clone https://github.com/jobscale/maintenance.git
cd maintenance
main() {
  docker build . -t local/maintenance:0.0.1
  docker run --rm --name maintenance -p 8443:443 -d local/maintenance:0.0.1
  sleep 0.8
  curl -k https://127.0.0.1:8443
  docker stop maintenance
} && main
```
