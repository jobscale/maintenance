#### run with container

```bash
git clone https://github.com/jobscale/maintenance.git
cd maintenance
main() {
  docker build . -t local/maintenance
  docker run --rm --name maintenance -p 3000:80 -d local/maintenance
  sleep 0.8
  curl -k https://127.0.0.1:3000
  docker stop maintenance
} && main
```
