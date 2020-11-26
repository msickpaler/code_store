RSpec.shared_examples "get success" do
  it { is_expected.to have_http_status(:success) }
end

RSpec.shared_examples "get success message" do
  it 'returns "Success!"' do
    expect(response.body).to eq "Success!"
  end
end

RSpec.shared_examples "get unauthorized" do
  it { is_expected.to have_http_status(:unauthorized) }
end

RSpec.shared_examples "get unauthorized error message" do
  it "returns error message" do
    expect(response.body).to eq "認証に失敗しました"
  end
end

RSpec.shared_examples "get unprocessable_entity" do
  it { is_expected.to have_http_status(:unprocessable_entity) }
end

RSpec.shared_examples "get not_found" do
  it { is_expected.to have_http_status(:not_found) }
end

RSpec.shared_examples "get not_found error message" do
  it "returns error message" do
    expect(response.body).to eq("スケジュールデータが見つかりません")
  end
end
