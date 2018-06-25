# CollectFactors

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/collect_factors`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'collect_factors'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install collect_factors

## Usage
**Run factors.rb in the command line (ruby factors.rb)**

Input: Given an array of integers

Output: Output each integer in the array and all the other integers in the array that are factors of the first integer.

Example:

Given an array of [10, 5, 2, 20], the output would be:
{ 10: [5, 2], 5: [], 2: [], 20: [10,5,2] }

**Additional Questions:** 

1.What if you were to cache the calculation, for example in the file system.  What would an example implementation
of the cache look like?  By cache I mean, given an array input, skip the calculation of the output if you have already
calculated the output at least once already.

**Answer:** The implementation of a cache uses cache_response to store and access the factorizations calculated from the given array. In the event of duplicates, cache_response would speed up the method considering that some of the calculations would be skipped. In my specific case, the use of caching(cache_response) did not affect the run time since the arrays were composed of unique integers.

2.What is the performance of your caching implementation?

**Answer:** The implementation, which uses ruby dictionaries (hash maps), has a linear run time. The example uses arrays that don’t have any duplicates. If it does have eb=ven in that case the hash map will help the cache response method to return faster response, as we are storing result in key value pairs.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/collect_factors. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CollectFactors project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/collect_factors/blob/master/CODE_OF_CONDUCT.md).
