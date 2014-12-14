require 'rails_helper'

RSpec.describe ShopsController, :type => :controller do

  describe 'GET #index' do

    let!(:shop) { FactoryGirl.create(:shop) }
    
    context '正常なアクセス' do
      before do
        get :index
      end

      it 'ステータスコード200が返ること' do
        expect(response.status).to eq(200)
      end

      it 'テンプレートが正しいこと' do
        expect(response.status).to render_template :index
      end

      it '変数に正しい値がセットされていること' do
        expect(assigns(:shops)).to eq Shop.all
      end
    end
  end

  describe 'GET #show' do

    let!(:shop) { FactoryGirl.create(:shop) }
    
    context '正常なアクセス' do

      before do
        get :show, id: shop.id
      end

      it 'ステータスコード200が返ること' do
        expect(response.status).to eq(200)
      end

      it 'テンプレートが正しいこと' do
        expect(response.status).to render_template :show
      end
      it '変数に正しい値がセットされていること' do
        expect(assigns(:shop)).to eq shop
      end
    end
  end
end
