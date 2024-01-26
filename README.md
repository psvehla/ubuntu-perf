Ubuntu with `perf` installed.

I went to use `perf` only to find that it's not straightforward to install on either MacOS or WSL2. So I built this quick and dirty container to get me going.

```bash
docker image build -t psvehla/ubuntu-perf:latest --load .
docker run -it psvehla/ubuntu-perf
```
