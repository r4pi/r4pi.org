all: clean build

build:
	mkdocs build -f mkdocs.yml 
	mkdocs build -f config/es/mkdocs.yml 

clean:
	rm -rf docs/*

serve:
	python3 -m http.server --directory ./docs/ 8000
