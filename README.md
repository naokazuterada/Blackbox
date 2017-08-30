# Blackbox

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/blackbox`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'blackbox'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blackbox

## Usage

```
# Use 'bundle exec' if needed
$ exe/blackbox setup
$ exe/blackbox test 1 1
(1 ? ?) + (1 ? ?) = 3
$ exe/blackbox test 1 2
(1 ? ?) + (1 ? ?) = 3
$ exe/blackbox testd 1 1
(1 - 1) + (1 + 2) = 3
$ exe/blackbox answer '-1+2'
Good job!!
ANSWER:      ([A] - 1) + ([B] + 2)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/blackbox.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

