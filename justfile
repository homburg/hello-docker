build:
    docker buildx build --cache-to=type=local,dest=cache,mode=max,ignore-error=true --cache-from=type=local,src=cache .

build-no-cache:
    docker buildx build --cache-to=type=local,dest=cache,mode=max,ignore-error=true --cache-from=type=local,src=cache .

flow:
    docker buildx build \
        --cache-from=type=local,src=cache,mode=max,ignore-error=true \
        --cache-to=type=local,dest=cache,mode=max,ignore-error=true \
        --no-cache-filter build \
        .