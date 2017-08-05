require "spec_helper"

RSpec.describe PrimeFactorization do
  let(:prime) { Class.new { include PrimeFactorization } }
  let(:obj) { prime.new}
  it "has a version number" do
    expect(PrimeFactorization::VERSION).not_to be nil
  end

  it "Returns all factors except the number used and 1" do
    expect(obj.factors(24)).to eq([2,3,4,6,8,12])
  end
  
  it "Returns only prime factors" do
  	expect(obj.prime_factors(24)).to eq([2,3])
  end

  it "Checks to see if the number given is a prime" do
  		expect(obj.prime_factorization(41)).to eq("41 is a prime number")
  end

  it "Returns the prime factorization of a number" do
  		expect(obj.prime_factorization(24)).to eql("2\u00b3 * 3")
  end


end