WEBUI_REF ?= v2.9.0
GIT_BRANCH ?= v1.0.0-$(WEBUI_REF)
TAG_SUFFIX ?= -1
GIT_TAG ?= $(GIT_BRANCH)$(TAG_SUFFIX)


.PHONY: generate
generate: clone
	cd clone && git checkout "$(WEBUI_REF)"
	cd clone && npm install
	cd clone && SKIP_PREFLIGHT_CHECK=true npm run build
	du -hs clone/build
	# cleanup to reduce bin size
	# FIXME: use something smarter: a custom webpack config?
	rm -rf clone/build/locales/[a-d]* clone/build/locales/[f-zR]*
	find clone/build \( -name "*.map" -or -name "*.eot" -or -name "*.woff" -or -name "*.woff2" -or -name "*.otf" \) -delete
	du -hs clone/build
	# pack
	pkger -include /clone/build

.PHONY: release
release: generate
	git checkout -b $(GIT_BRANCH)
	git add -f pkged.go
	touch clone/go.mod
	go mod tidy
	git commit -sam "chore: generate release ($(WEBUI_REF))"
	git push -u origin $(GIT_BRANCH)
	git tag $(GIT_TAG)
	git push --tags
	git checkout master

.PHONY: re
re: clean generate

clone:
	git clone --single-branch --branch "$(WEBUI_REF)" https://github.com/ipfs-shipyard/ipfs-webui clone

.PHONY: clean
clean:
	rm -rf clone
