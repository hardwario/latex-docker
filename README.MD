# Overview
This Docker contains tools for LaTeX automating document compilation

## Example

### Gitlab CI
`.gitlab-ci.yml`
```yml
image: "hardwario/latex:latest"

build:
  stage: build

  script:
    - make

  artifacts:
    paths:
      - "*.bin"
    expire_in: 30 days
```

### Local
```
cd your-project-folder
docker run --rm -it -v `pwd`:/builds -u `id -u`:`id -g` hardwario/latex make
```

## Additional packages
  * make 
  * zip 
  * curl 
  * plantuml 
  * texlive-latex-extra 
  * texlive-fonts-recommended 

## Local build

```
docker build -t latex .
```