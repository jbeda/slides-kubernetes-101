NAME := kubernetes-101
GS_BUCKET := slides.eightypercent.net
GSUTIL_X := -x '(\.git|release)/'

upload-nocache:
	gsutil -m -h "Cache-Control:private, max-age=0" rsync $(GSUTIL_X) -d -c -r . gs://$(GS_BUCKET)/$(NAME)

upload:
	gsutil -m rsync $(GSUTIL_X) -d -c -r . gs://$(GS_BUCKET)/$(NAME)

copy:
	gsutil -m cp -r . gs://$(GS_BUCKET)/$(NAME)

set-cache:
	gsutil -m setmeta -r -h "Cache-Control:public, max-age=3600" gs://$(GS_BUCKET)/$(NAME)

set-nocache:
	gsutil -m setmeta -r -h "Cache-Control:private, max-age=0" gs://$(GS_BUCKET)/$(NAME)

release-zip:
	./make-release-zip.sh

local-webserver:
	@echo "Launching web server at http://localhost:8000"
	@echo "Hit Ctrl-C to exit"
	python -m SimpleHTTPServer 8000
