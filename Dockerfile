FROM public.ecr.aws/docker/library/alpine:3.20.0

RUN apk add --no-cache samba-server

ENTRYPOINT ["smbd", "--foreground", "--log-stdout", "--no-process-group"]
