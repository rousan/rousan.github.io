# [rousanali.com](https://rousanali.com/)

My Portfolio and blog.

## Usage

To test on local machine, do the following steps:

* Install [Jekyll](http://jekyllrb.com/), [NodeJS](https://nodejs.org/) and [Bundler](http://bundler.io/).
* Clone the repository.
* Checkout develop branch.
* Install dependencies.
* Build the project.
* Start the server.
* Open `http://localhost:4000`.

```bash
$ git clone git@github.com:rousan/rousan.github.io.git
$ cd rousan.github.io
$ git checkout develop
$ bundle install
$ bundle exec jekyll serve --config _config.yml,_config-dev.yml
```

To test on devices of same local network, run:

```bash
$ JEKYLL_ENV=production bundle exec jekyll serve --host 0.0.0.0 --config _config.yml,_config-dev.yml
```

## Test

```bash
$ chmod +x travis.sh
$ ./travis.sh
```