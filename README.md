# README

'mini-app' is a base Rails application that is so `mini`, it does not even use a database !

It includes application gems like:

* [High Voltage](https://github.com/thoughtbot/high_voltage) for static pages
* [appengine-ruby](https://github.com/GoogleCloudPlatform/appengine-ruby) optional integration library for the Ruby runtime for Google App Engine

And development gems like:

* [RuboCop](https://github.com/rubocop/rubocop) for static code analysis and formatting

Possible future add-ons:

* [prometheus_exporter](https://github.com/thoughtbot/prometheus_exporter) for collecting and aggregating prometheus metrics

## Build and deploy

### OpenShift build and deployment

Required build ENV settings:

* RAILS_MASTER_KEY: prevents that a new `master.key` is created during the app build

Optional build ENV settings:

* BUNDLE_REBUILD: ignore a `Gemfile.lock` file if present.
* BUNDLE_WITHOUT: exclude e.g. `development` or `test` gems

Required run ENV settings:

* RAILS_MASTER_KEY: without a master.key, RAILS will fail to load it's secrets ...

Optional run ENV settings:

* RAILS_SERVE_STATIC_FILES
* RAILS_MAX_THREADS
* RAILS_MIN_THREADS

## References

* [Ruby runtimes on Google App Engine](https://cloud.google.com/appengine/docs/standard/ruby/runtime)
* [sclorg/rails-ex](https://github.com/sclorg/rails-ex) deployment on Red Hat OpenShift

## Setup

### Initial creation

```shell
rails new . --minimal --skip-active-record
```

### Checks before committing

```shell
bundler exec rubocop -a
```

### Credentials etc ...

```shell
bundler rails credentials:edit

```
