NAME := kubernetes-101
GS_BUCKET := slides.eightypercent.net

upload-nocache:
	gsutil -m -h "Cache-Control:private, max-age=0" rsync -c -r . gs://$(GS_BUCKET)/$(NAME)

upload:
	gsutil -m rsync -c -r . gs://$(GS_BUCKET)/$(NAME)

copy:
	gsutil -m cp -r . gs://$(GS_BUCKET)/$(NAME)

release-zip:
	make-release-zip.sh
	