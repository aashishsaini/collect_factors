require_relative "collect_factors/version"

module CollectFactors
  class Factors
    # the get_factors method extracts the factors of each number of the given array and
    # displays the output in key value pairs
    def self.get_factors(arr)
      result = {}
      return result if arr.length == 0
      arr.each do |num1|
        result[num1] = result[num1] || []
        arr.reject{|s| s == num1}.each do |num2|
          if num1%num2 == 0
            result[num1].push(num2)
          end
        end
      end
      result
    end


    # the cache_response function checks to see whether we have a cached value if we don't have the value,
    # the value is placed in the cache and then the result is returned.
    def self.cache_response(fn)
      cache = {}
      lambda {|*args|
        return cache[args] if cache.has_key?(args)
        cache[args] = fn.call(*args)}
    end

    # this cached_factors methods makes use of the of cache_response (caching) function for duplicate values
    # the algorithm remains the same to extract the factors of augmented array
    cache_response def self.cached_factors(arr)
      self.get_factors(arr)
    end
  end
end
