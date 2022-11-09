MU = mustache
INOTIFY = inotifywait
BUSYBOX = $(shell busybox --list | grep "httpd" >/dev/null 2>&1 && echo busybox || echo busybox-extras)

PUBLIC = ./public
TEMPLATE = ./template-index.html
HASH = ./hash.json

TO_WATCH = $(PUBLIC) $(TEMPLATE) $(HASH)

index.html:
	$(MU) - $(TEMPLATE) < $(HASH) > $(PUBLIC)/$@

.PHONY: serve, watch

watch:
	$(INOTIFY) -e modify -e move -e create -e delete $(TO_WATCH)

serve:
	$(BUSYBOX) httpd -f -v -h $(PUBLIC) -p 0.0.0.0:8080
