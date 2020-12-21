run:
	docker build . --tag node-re2-cache-issue
	docker run -it node-re2-cache-issue bash build.sh