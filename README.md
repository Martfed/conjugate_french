# ConjugateFrench

I always found the french language a difficult one. Specially if it's not your mother tongue.
I often find myself going on google and find how to conjugate a specific verb.
With ConjugateFrench you can quickly see the conjugations of a french verbe in your terminal.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'conjugate_french'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install conjugate_french

## Usage

After installation run:

    $ conjugate_french verbe [verb you want to conjugate in its infinitive form]

output:
```
    +------+---------+---------------+-----------+------------------+--------------+-----------------+--------------+-----------------+
    |                                                     Verbe Courir Indicatif                                                      |
    +------+---------+---------------+-----------+------------------+--------------+-----------------+--------------+-----------------+
    |      | présent | passé composé | imparfait | plus-que-parfait | passé simple | passé antérieur | futur simple | futur antérieur |
    +------+---------+---------------+-----------+------------------+--------------+-----------------+--------------+-----------------+
    | Je   | cours   | couru         | courais   | couru            | courus       | couru           | courrai      | couru           |
    | Tu   | cours   | couru         | courais   | couru            | courus       | couru           | courras      | couru           |
    | Il   | court   | couru         | courait   | couru            | courut       | couru           | courra       | couru           |
    | Nous | courons | couru         | courions  | couru            | courûmes     | couru           | courrons     | couru           |
    | Vous | courez  | couru         | couriez   | couru            | courûtes     | couru           | courrez      | couru           |
    | Ils  | courent | couru         | couraient | couru            | coururent    | couru           | courront     | couru           |
    +------+---------+---------------+-----------+------------------+--------------+-----------------+--------------+-----------------+
    +------+----------+-------+-------------+------------------+
    |                 Verbe Courir Subjonctif                  |
    +------+----------+-------+-------------+------------------+
    |      | présent  | passé | imparfait   | plus-que-parfait |
    +------+----------+-------+-------------+------------------+
    | Je   | coure    | couru | courusse    | couru            |
    | Tu   | coures   | couru | courusses   | couru            |
    | Il   | coure    | couru | courût      | couru            |
    | Nous | courions | couru | courussions | couru            |
    | Vous | couriez  | couru | courussiez  | couru            |
    | Ils  | courent  | couru | courussent  | couru            |
    +------+----------+-------+-------------+------------------+
    +------+------------+------------------+------------------+
    |                Verbe Courir Conditionnel                |
    +------+------------+------------------+------------------+
    |      | présent    | passé 1ère forme | passé 2ème forme |
    +------+------------+------------------+------------------+
    | Je   | courrais   | couru            | couru            |
    | Tu   | courrais   | couru            | couru            |
    | Il   | courrait   | couru            | couru            |
    | Nous | courrions  | couru            | couru            |
    | Vous | courriez   | couru            | couru            |
    | Ils  | courraient | couru            | couru            |
    +------+------------+------------------+------------------+
    +------+---------+-------+
    | Verbe Courir Impératif |
    +------+---------+-------+
    |      | présent | passé |
    +------+---------+-------+
    |      | cours   | couru |
    |      | courons | couru |
    |      | courez  | couru |
    +------+---------+-------+
    +-----+---------+--------+
    | Verbe Courir Participe |
    +-----+---------+--------+
    |     | présent | passé  |
    +-----+---------+--------+
    |     | courant | courue |
    |     |         | couru  |
    +-----+---------+--------+
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Martfed/conjugate_french.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
