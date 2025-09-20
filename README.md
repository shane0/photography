# photography

- <https://sigal.saimon.org/en/stable/configuration.html>
- trying out sigal as a backup or alternative

## utility

- [ ] later move these to plugins/
- mover moving files into flat directory
- stringmover prompt for string move files based on name useful when using albums

## run locally

```sh
# my alias for venv is vv
# if new folder vvc && rrr && vv 
vv
# one time sigal init
sigal build
sigal serve
# http://127.0.0.1:8000/
```

## setup

```sh
mkdir -p .github/workflows && touch .github/workflows/deploy.yml
```

1g limit
du -h .

## garbage

```sh
# echo .DS_Store >> .gitignore
# git rm -r --cached .DS_Store

find ~ -name .DS_Store -delete
find . -name .DS_Store -delete

# git config --global core.excludesfile ~/.gitignore_global
# echo .DS_Store >> ~/.gitignore_global
```
