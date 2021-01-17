# ActiverecordI18n
This gem was created to use db additionaly to the existing I18n.t
This gems didn't replace the standard.

I use this code for few year on all my project, It's simple and easy to support. I'm finally decide to share this code.

If you want to replace, the exsiting I18n.t, I recommand you this gem : https://github.com/svenfuchs/i18n-active_record

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

## Contributor
You want to contribute ? I need to finish the test

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
