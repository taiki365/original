require 'rails_helper'

RSpec.describe Batter, type: :model do
  before do
    @batter = FactoryBot.build(:batter)
  end
  
  describe '打者成績新規登録' do
    context '打者成績を新規登録出来ない場合' do
      it '打者名が空では登録出来ない' do
        @batter.batter_name = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Batter name can't be blank"
      end
      it '打数が空では登録出来ない' do
        @batter.bat = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Bat can't be blank"
      end
      it '打点が空では登録出来ない' do
        @batter.rbi = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Rbi can't be blank"
      end
      it '打者名が空では登録出来ない' do
        @batter.batter_name = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Batter name can't be blank"
      end
    end
    context '打者成績を新規登録出来る場合' do
      it '全ての項目が入力されていれば登録できる' do
        expect(@batter).to be_valid
      end
    end
  end
end
