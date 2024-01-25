require_relative '../lib/scrap_btc'

    describe "Trader" do
      it "check name and price crypto" do
        expect(price_name_crypto.empty?).to eq(false)
    end
end
