require 'rails_helper'

RSpec.describe Pitcher, type: :model do
  before do
    @pitcher = FactoryBot.build(:pitcher)
  end
  
  describe '投手成績新規登録' do
    context '投手成績を新規登録出来ない場合' do
      it '投手名が空では登録出来ない' do
        @pitcher.pitcher_name = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Pitcher name can't be blank"
      end
      it '勝利数が空では登録出来ない' do
        @pitcher.win = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Win can't be blank"
      end
      it '敗北数が空では登録出来ない' do
        @pitcher.lose = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Lose can't be blank"
      end
      it '被安打数が空では登録出来ない' do
        @pitcher.damage_hit = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Damage hit can't be blank"
      end
      it '防御率が空では登録出来ない' do
        @pitcher.defense = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Defense can't be blank"
      end
      it '失点が空では登録出来ない' do
        @pitcher.conceded = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Conceded can't be blank"
      end
      it '被本塁打数が空では登録出来ない' do
        @pitcher.damage_homerun = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Damage homerun can't be blank"
      end
      it '与四球数が空では登録出来ない' do
        @pitcher.gave_walks = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Gave walks can't be blank"
      end
      it '与死球数が空では登録出来ない' do
        @pitcher.gave_dead_ball = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Gave dead ball can't be blank"
      end
      it '投球回が空では登録出来ない' do
        @pitcher.inning = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Inning can't be blank"
      end
      it '被打率が空では登録出来ない' do
        @pitcher.damage_batting_average = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Damage batting average can't be blank"
      end
      it '被出塁率が空では登録出来ない' do
        @pitcher.damage_base_percentage = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Damage base percentage can't be blank"
      end
      it 'QSが空では登録出来ない' do
        @pitcher.qs = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Qs can't be blank"
      end
      it '被長打率が空では登録出来ない' do
        @pitcher.damage_slugging_percentage = ''
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Damage slugging percentage can't be blank"
      end
      it '投手名が全角ひらがな、全角カタカナ、漢字以外では登録出来ない' do
        @pitcher.pitcher_name = 'a'
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Pitcher name is invalid"
      end
      it '被安打数がマイナスでは登録出来ない' do
        @pitcher.damage_hit = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Damage hit must be greater than or equal to 0"
      end
      it '防御率がマイナスでは登録出来ない' do
        @pitcher.defense = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Defense must be greater than or equal to 0"
      end
      it '勝利数がマイナスでは登録出来ない' do
        @pitcher.win = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Win must be greater than or equal to 0"
      end
      it '敗北数がマイナスでは登録出来ない' do
        @pitcher.lose = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Lose must be greater than or equal to 0"
      end
      it '失点がマイナスでは登録出来ない' do
        @pitcher.conceded = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Conceded must be greater than or equal to 0"
      end
      it '被本塁打がマイナスでは登録出来ない' do
        @pitcher.damage_homerun = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Damage homerun must be greater than or equal to 0"
      end
      it '与四球数がマイナスでは登録出来ない' do
        @pitcher.gave_walks = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Gave walks must be greater than or equal to 0"
      end
      it '与死球数がマイナスでは登録出来ない' do
        @pitcher.gave_dead_ball = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Gave dead ball must be greater than or equal to 0"
      end
      it '投球回がマイナスでは登録出来ない' do
        @pitcher.inning = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Inning must be greater than or equal to 0"
      end
      it '被打率がマイナスでは登録出来ない' do
        @pitcher.damage_batting_average = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Damage batting average must be greater than or equal to 0"
      end
      it '被出塁率がマイナスでは登録出来ない' do
        @pitcher.damage_base_percentage = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Damage base percentage must be greater than or equal to 0"
      end
      it 'QSがマイナスでは登録出来ない' do
        @pitcher.qs = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Qs must be greater than or equal to 0"
      end
      it '被長打率がマイナスでは登録出来ない' do
        @pitcher.damage_slugging_percentage = -1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Damage slugging percentage must be greater than or equal to 0"
      end
      it '被安打数が小数では登録出来ない' do
        @pitcher.damage_hit = 0.1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Damage hit must be an integer"
      end
      it '勝利数が小数では登録出来ない' do
        @pitcher.win = 0.1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Win must be an integer"
      end
      it '敗北数が小数では登録出来ない' do
        @pitcher.lose = 0.1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Lose must be an integer"
      end
      it '失点が小数では登録出来ない' do
        @pitcher.conceded = 0.1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Conceded must be an integer"
      end
      it '被本塁打数が小数では登録出来ない' do
        @pitcher.damage_homerun = 0.1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Damage homerun must be an integer"
      end
      it '与四球数が小数では登録出来ない' do
        @pitcher.gave_walks = 0.1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Gave walks must be an integer"
      end
      it '与死球数が小数では登録出来ない' do
        @pitcher.gave_dead_ball = 0.1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Gave dead ball must be an integer"
      end
      it 'QSが小数では登録出来ない' do
        @pitcher.qs = 0.1
        @pitcher.valid?
        expect(@pitcher.errors.full_messages).to include "Qs must be an integer"
      end
    end
    context '投手成績を新規登録出来る場合' do
      it '全ての項目が入力されていれば登録できる' do
        expect(@pitcher).to be_valid
      end
    end
  end
end
