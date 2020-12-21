run:
	docker build . --tag node-re2-cache-issue
	docker run -it node-re2-cache-issue bash build.sh
	# docker run -v /home/codespace/workspace/node-re2-cache-issue:/data/node-re2-cache-issue/ -it node-re2-cache-issue bash build.sh