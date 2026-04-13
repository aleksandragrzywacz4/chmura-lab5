FROM node:alpine AS builder

ARG VERSION
ENV APP_VERSION=$VERSION

WORKDIR /app
COPY index.sh .

RUN sh index.sh

FROM nginx:alpine
RUN apk add --no-cache curl

COPY --from=builder /app/index.html /usr/share/nginx/html/index.html

HEALTHCHECK --interval=10s --timeout=3s \
	CMD curl -f http://localhost/ || exit 1
EXPOSE 80
