# https://medium.com/@rothgar/how-to-debug-a-running-docker-container-from-a-separate-container-983f11740dc6
# docker run -t --pid=container:<targetname> --net=container:<targetname> \
#  --cap-add sys_admin --cap-add sys_ptrace strace

FROM alpine:3.6
RUN apk update && apk add strace
CMD ["strace", "-f", "-p", "1"]

