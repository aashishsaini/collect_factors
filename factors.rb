require_relative 'lib/collect_factors'

puts 'get factors without using caching'
puts CollectFactors::Factors.get_factors([10, 5, 2, 20])

puts 'cache factors'
puts CollectFactors::Factors.cached_factors([10, 5, 2, 20])
