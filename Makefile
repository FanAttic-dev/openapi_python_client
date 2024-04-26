generate:
	docker run --rm \
		--volume "$(PWD)":/out docker.io/openapitools/openapi-generator-cli generate \
		--generator-name python \
		--input-spec 'https://api.dev.getmoments.com/v2.0/schema/getmoments_api.yaml' \
		--output "/out/client"

generate_models_only:
	docker run --rm \
    --volume "$(PWD)":/out docker.io/openapitools/openapi-generator-cli generate \
    --generator-name python \
    --input-spec 'https://api.dev.getmoments.com/v2.0/schema/getmoments_api.yaml' \
    --output "/out/client" \
	--global-property models

clean:
	sudo rm -rf client