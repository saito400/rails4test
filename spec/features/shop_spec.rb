require "spec_helper"

describe Shop do

  context "一覧表示" do

    context "登録データ無し" do
      before do
        visit(shops_path)
      end

      it "indexが表示されること" do
        expect(page.current_path).to eq shops_path
      end

      it "登録データが表示されないこと" do
        expect(page).to have_no_content "Shinjuku Nishiguchi"
      end
    end

    context "登録データあり" do

      let! (:shops) do
        Shop.create(
          :name => "Shinjuku Nishiguchi"
        )
      end

      before do
        visit(shops_path)
      end

      it "indexが表示されること" do
        expect(page.current_path).to eq shops_path
      end

      it "登録データが表示されること" do
        expect(page).to have_content "Shinjuku Nishiguchi"
      end
    end
  end
end
