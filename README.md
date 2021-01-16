# ActiverecordI18n
Short description and motivation.

## Usage
Use from view
```
ot('mykey')   # will create a key name  mykey
ot('.mykey')   # will create a key name  <view-path>.mykey
```

Using elsewhere from a view
```
ActiverecordI18n::Helper.ot('mykey')
```

## Getting started
Add this line to your application's Gemfile:

```ruby
gem 'activerecord_i18n'
```

And then execute:
```bash
$ bundle install
```

Or install it yourself as:
```bash
$ gem install activerecord_i18n
```

To install model and migration
```bash
$ rails generate activerecord_i18n:install
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
