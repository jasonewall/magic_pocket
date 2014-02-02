# MagicPocket

The idea for this - no word of a lie - came to me in a dream one night. I woke up the next day and decided to write it, as simple as it is, just because I thought I should. I have no idea how useful it is, if it's replaceable by something in `Enumerable`, or if something else like it and beefier already exists. I'm just putting it out there to get people talking.

## Installation

Add this line to your application's Gemfile:

    gem 'magic_pocket'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install magic_pocket

## Usage

It's pretty simple.

    magic = MagicPocket::Hash.new
    magic.stuff! :key, 'one'
    magic[:key]
    => 'one'
    
    magic.stuff! :key, 'two'
    magic[:key]
    => ['one', 'two']
    
`MagicPocket::Hash` extends `::Hash` so you can rely on it that way.
    
Or you can simply include `MagicPocket` into anything 'Hashy' for your own devious purposes. Anything that responds to `[]` will do it.

Maybe if you want it in `HashWithIndifferentAccess` or all hashes with in your write an initializer to include the module there?

## Contributing

### What needs to be done

I think it would be cool to some how tie this into ActiveRecord for use with PG's `hstore` functionality. There could aslo be some transformative things that could be done with this once a magic pocket is populated.

### The usual contributing thing

1. Fork it ( http://github.com/<my-github-username>/magic_pocket/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
