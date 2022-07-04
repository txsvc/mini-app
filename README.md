# README

'mini-app' is the base Rails application used at txs.vc. It is so `mini`, it does not even use a database !

It includes application gems like:

* [High Voltage](https://github.com/thoughtbot/high_voltage) for static pages
* [appengine-ruby](https://github.com/GoogleCloudPlatform/appengine-ruby) optional integration library for the Ruby runtime for Google App Engine

And development gems like:

* [RuboCop](https://github.com/rubocop/rubocop) for static code analysis and formatting

Possible future add-ons:

* [prometheus_exporter](https://github.com/thoughtbot/prometheus_exporter) for collecting and aggregating prometheus metrics

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
bundle exec rubocop -a
```