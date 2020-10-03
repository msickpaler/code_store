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