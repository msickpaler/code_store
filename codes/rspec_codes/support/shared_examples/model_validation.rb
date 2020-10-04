RSpec.shared_examples "valid params" do
  it { is_expected.to be_valid }
end

RSpec.shared_examples "invalid params" do
  it { is_expected.not_to be_valid }
end

RSpec.shared_examples "validation error" do |column, message|
  it "#{column} #{message}" do
    subject.valid?
    expect(subject.errors[column]).to eq(message)
  end
end

RSpec.shared_examples "has no association" do |target|
  it "has no association to #{target}" do
    expect(described_class.reflect_on_association(target)).to be_nil
  end
end

# association is like :belongs_to, :has_many
RSpec.shared_examples "has association" do |association, target|
  it "#{association} #{target}" do
    expect(described_class.reflect_on_association(target).macro).to eq association
  end
end
