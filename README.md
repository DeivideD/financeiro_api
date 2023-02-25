# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

```ruby
$ gem install rails
ERROR:  Loading command: install (LoadError)
    cannot load such file -- openssl
ERROR:  While executing gem ... (NoMethodError)
    undefined method `invoke_with_build_args' for nil:NilClass



  rvm pkg install openssl


  rvm reinstall ruby-2.3.1  --with-openssl-dir=$rvm_path/usr
```