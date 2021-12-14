require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  
  describe 'ユーザー新規登録' do
    context 'ユーザー登録出来ない場合' do
      it 'メールアドレスが空では登録出来ない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end
      it 'パスワードが空では登録出来ない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end
      it 'メールアドレスが既に登録されている' do
        @user.save
        another_user = FactoryBot.create(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'パスワードが6文字以上ではない' do
        user = FactoryBot.build(:user)
        @user.password = 'ab345'
        @user.password_confirmation = 'ab345'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is too short (minimum is 6 characters)'
      end
      it 'パスワードが確認と一致しない' do
        @user.password = '123456'
        @user.password_confirmation = '1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
      it 'メールアドレスに@が含まれていない' do
        @user.email = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Email is invalid'
      end
    end
    context 'ユーザー登録出来る場合' do
      it '全ての項目が入力されていれば出品できる' do
        expect(@user).to be_valid
      end
    end
  end
end
