RSpec.describe ConjugateFrench do
  it 'has a version number' do
    expect(ConjugateFrench::VERSION).not_to be nil
  end

  it 'returns an error if not argument given' do
    expect(ConjugateFrench::ConjugateCLI.start(%w[verbe fezfez])).to eq('The verb you entered was not found. There is probably a typo or the verb is not in the infinitive.')
  end
end
