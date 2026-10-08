# Redis 4.x Unauthenticated RCE via Master-Slave Replication

[Vulhub](https://vulhub.org)'s [`redis/4-unacc`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/redis/4-unacc) environment, by
phith0n and the Vulhub contributors: Redis 4.0.14 without authentication, exploitable through master-slave replication and a malicious module. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine runs Vulhub's published image `vulhub/redis:4.0.14`; the environment folder is vendored in [`app/`](app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| redis | Redis 4.0.14 on port 6379 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then connect with `redis-cli -h 127.0.0.1 -p 6379`. The rogue master the exploit runs must be reachable from the target, so the lab network keeps its way out. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/redis/4-unacc/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
