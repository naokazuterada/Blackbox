# Blackbox

This is test implementation for 'Blackbox' game.

## Installation

```sh
git clone https://github.com/naokazuterada/Blackbox.git
cd Blackbox
```

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

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

