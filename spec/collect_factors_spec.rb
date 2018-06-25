RSpec.describe CollectFactors do
  it "has a version number" do
    expect(CollectFactors::VERSION).not_to be nil
  end

  it "returns factors of elements of array" do
    arr = [10, 5, 2, 20]
    result = CollectFactors::Factors.get_factors(arr)
    expect(result).not_to be nil
    expect(result[arr[0]]).not_to be nil
    expect(result[arr[0]]).to include(5)
    expect(result[arr[0]]).to include(2)
  end

  it "returns blank has if arr argument is blank" do
    arr = []
    result = CollectFactors::Factors.get_factors(arr)
    expect(result).not_to be nil
    expect(result).to eq({})
  end
end
