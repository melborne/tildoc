# Tildoc

Add String#~ for removing leading margins of heredocs.

## Installation

Add this line to your application's Gemfile:

    gem 'tildoc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tildoc

## Usage

This;

```ruby
class ATool
  def self.help
    lines = <<-EOS
Atool is one of the greatest tool in the world.
This helps you a lot on your daily work.
Your life will be changed with `Atool`!!
....
    EOS
    lines
  end
end

puts ATool.help
```
becomes this, with `~` prefix to a heredoc.
No leading margins.

```ruby
class ATool
  def self.help
    lines = ~<<-EOS
      Atool is one of the greatest tool in the world.
      This helps you a lot on your daily work.
      Your life will be changed with `Atool`!!
      ....
    EOS
    lines
  end
end

puts ATool.help
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/tildoc/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
