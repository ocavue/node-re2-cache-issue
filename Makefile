run:
	docker build . --tag node-re2-cache-issue
	docker run -it node-re2-cache-issue bash build.sh

gen:
	sudo touch npm-example/package-lock.json yarn-example/yarn.lock yarnv2-example/yarn.lock pnpm-example/pnpm-lock.yaml
	sudo rm    npm-example/package-lock.json yarn-example/yarn.lock yarnv2-example/yarn.lock pnpm-example/pnpm-lock.yaml
	docker build . --tag node-re2-cache-issue
	docker run -v ${PWD}:/data/node-re2-cache-issue/ -it node-re2-cache-issue bash build.sh
