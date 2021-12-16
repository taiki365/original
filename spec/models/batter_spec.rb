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
      it '単打数が空では登録出来ない' do
        @batter.single = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Single can't be blank"
      end
      it '二塁打数が空では登録出来ない' do
        @batter.double = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Double can't be blank"
      end
      it '三塁打数が空では登録出来ない' do
        @batter.triple = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Triple can't be blank"
      end
      it '本塁打数が空では登録出来ない' do
        @batter.homerun = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Homerun can't be blank"
      end
      it '四球数が空では登録出来ない' do
        @batter.walks = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Walks can't be blank"
      end
      it '死球数が空では登録出来ない' do
        @batter.dead_ball = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Dead ball can't be blank"
      end
      it '犠飛数が空では登録出来ない' do
        @batter.sacrifice_fly = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Sacrifice fly can't be blank"
      end
      it '三振数が空では登録出来ない' do
        @batter.strikeout = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Strikeout can't be blank"
      end
      it '盗塁数が空では登録出来ない' do
        @batter.steal = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Steal can't be blank"
      end
      it '盗塁死が空では登録出来ない' do
        @batter.steal_dead = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Steal dead can't be blank"
      end
      it '得点が空では登録出来ない' do
        @batter.runs = ''
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Runs can't be blank"
      end
      it '打者名が全角ひらがな、全角カタカナ、漢字以外では登録出来ない' do
        @batter.batter_name = 'a'
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Batter name is invalid"
      end
      it '打数がマイナスでは登録出来ない' do
        @batter.bat = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Bat must be greater than or equal to 0"
      end
      it '打数がマイナスでは登録出来ない' do
        @batter.bat = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Bat must be greater than or equal to 0"
      end
      it '打点がマイナスでは登録出来ない' do
        @batter.rbi = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Rbi must be greater than or equal to 0"
      end
      it '単打数がマイナスでは登録出来ない' do
        @batter.single = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Single must be greater than or equal to 0"
      end
      it '二塁打がマイナスでは登録出来ない' do
        @batter.double = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Double must be greater than or equal to 0"
      end
      it '三塁打がマイナスでは登録出来ない' do
        @batter.triple = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Triple must be greater than or equal to 0"
      end
      it '本塁打数がマイナスでは登録出来ない' do
        @batter.homerun = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Homerun must be greater than or equal to 0"
      end
      it '四球数がマイナスでは登録出来ない' do
        @batter.walks = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Walks must be greater than or equal to 0"
      end
      it '死球数がマイナスでは登録出来ない' do
        @batter.dead_ball = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Dead ball must be greater than or equal to 0"
      end
      it '犠飛数がマイナスでは登録出来ない' do
        @batter.sacrifice_fly = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Sacrifice fly must be greater than or equal to 0"
      end
      it '三振数がマイナスでは登録出来ない' do
        @batter.strikeout = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Strikeout must be greater than or equal to 0"
      end
      it '盗塁数がマイナスでは登録出来ない' do
        @batter.steal = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Steal must be greater than or equal to 0"
      end
      it '盗塁死がマイナスでは登録出来ない' do
        @batter.steal_dead = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Steal dead must be greater than or equal to 0"
      end
      it '得点がマイナスでは登録出来ない' do
        @batter.runs = -1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Runs must be greater than or equal to 0"
      end
      it '打数が小数では登録出来ない' do
        @batter.bat = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Bat must be an integer"
      end
      it '打点が小数では登録出来ない' do
        @batter.rbi = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Rbi must be an integer"
      end
      it '単打数が小数では登録出来ない' do
        @batter.single = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Single must be an integer"
      end
      it '二塁打数が小数では登録出来ない' do
        @batter.double = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Double must be an integer"
      end
      it '三塁打数が小数では登録出来ない' do
        @batter.triple = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Triple must be an integer"
      end
      it '本塁打数が小数では登録出来ない' do
        @batter.homerun = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Homerun must be an integer"
      end
      it '四球数が小数では登録出来ない' do
        @batter.walks = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Walks must be an integer"
      end
      it '死球数が小数では登録出来ない' do
        @batter.dead_ball = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Dead ball must be an integer"
      end
      it '犠飛数が小数では登録出来ない' do
        @batter.sacrifice_fly = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Sacrifice fly must be an integer"
      end
      it '三振数が小数では登録出来ない' do
        @batter.strikeout = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Strikeout must be an integer"
      end
      it '盗塁数が小数では登録出来ない' do
        @batter.steal = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Steal must be an integer"
      end
      it '盗塁死が小数では登録出来ない' do
        @batter.steal_dead = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Steal dead must be an integer"
      end
      it '得点が小数では登録出来ない' do
        @batter.runs = 0.1
        @batter.valid?
        expect(@batter.errors.full_messages).to include "Runs must be an integer"
      end
    end
    context '打者成績を新規登録出来る場合' do
      it '全ての項目が入力されていれば登録できる' do
        expect(@batter).to be_valid
      end
    end
  end
end
