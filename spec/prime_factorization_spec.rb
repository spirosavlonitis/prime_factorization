require "spec_helper"

RSpec.describe PrimeFactorization do
  it "has a version number" do
    expect(PrimeFactorization::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(PrimeFactorization.new.all_factors(24)).to eq([1,2,3,4,6,8,12,24])
  end
end
