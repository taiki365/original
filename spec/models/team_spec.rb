require 'rails_helper'

RSpec.describe Team, type: :model do
  before do
    @team = FactoryBot.build(:team)
  end
  
  describe 'チーム成績新規登録' do
    context 'チーム成績を新規登録出来ない場合' do
      it '試合数が空では登録出来ない' do
        @team.game_number = ''
        @team.valid?
        expect(@team.errors.full_messages).to include "Game number can't be blank"
      end
      it 'チーム名が空では登録出来ない' do
        @team.team_name_id = ''
        @team.valid?
        expect(@team.errors.full_messages).to include "Team name can't be blank"
      end
      it '勝利数が空では登録出来ない' do
        @team.team_win = ''
        @team.valid?
        expect(@team.errors.full_messages).to include "Team win can't be blank"
      end
      it '敗北数が空では登録出来ない' do
        @team.team_lose = ''
        @team.valid?
        expect(@team.errors.full_messages).to include "Team lose can't be blank"
      end
      it '引き分け数が空では登録出来ない' do
        @team.draw = ''
        @team.valid?
        expect(@team.errors.full_messages).to include "Draw can't be blank"
      end
      it 'ゲーム差が空では登録出来ない' do
        @team.game_difference = ''
        @team.valid?
        expect(@team.errors.full_messages).to include "Game difference can't be blank"
      end
      it 'チーム防御率が空では登録出来ない' do
        @team.team_defense = ''
        @team.valid?
        expect(@team.errors.full_messages).to include "Team defense can't be blank"
      end
      it 'チーム打率が空では登録出来ない' do
        @team.team_batting_average = ''
        @team.valid?
        expect(@team.errors.full_messages).to include "Team batting average can't be blank"
      end
      it 'チーム本塁打数が空では登録出来ない' do
        @team.team_homerun = ''
        @team.valid?
        expect(@team.errors.full_messages).to include "Team homerun can't be blank"
      end
      it 'チーム盗塁数が空では登録出来ない' do
        @team.team_steal = ''
        @team.valid?
        expect(@team.errors.full_messages).to include "Team steal can't be blank"
      end
      it 'チーム得点数が空では登録出来ない' do
        @team.team_runs = ''
        @team.valid?
        expect(@team.errors.full_messages).to include "Team runs can't be blank"
      end
      it 'チーム失点数が空では登録出来ない' do
        @team.tema_conceded = ''
        @team.valid?
        expect(@team.errors.full_messages).to include "Tema conceded can't be blank"
      end
      it 'チーム名に「---」が選択されている場合は出品できない' do
        @team.team_name_id = 1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team name must be greater than 1"
      end
      it '試合数がマイナスでは登録出来ない' do
        @team.game_number = -1
        @team.valid?
        expect(@team.errors.full_messages).to include "Game number must be greater than or equal to 0"
      end
      it 'チーム勝利数がマイナスでは登録出来ない' do
        @team.team_win = -1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team win must be greater than or equal to 0"
      end
      it 'チーム敗北数がマイナスでは登録出来ない' do
        @team.team_lose = -1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team lose must be greater than or equal to 0"
      end
      it '引き分け数がマイナスでは登録出来ない' do
        @team.draw = -1
        @team.valid?
        expect(@team.errors.full_messages).to include "Draw must be greater than or equal to 0"
      end
      it 'チーム防御率がマイナスでは登録出来ない' do
        @team.team_defense = -1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team defense must be greater than or equal to 0"
      end
      it 'チーム打率がマイナスでは登録出来ない' do
        @team.team_batting_average = -1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team batting average must be greater than or equal to 0"
      end
      it 'チーム本塁打数がマイナスでは登録出来ない' do
        @team.team_homerun = -1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team homerun must be greater than or equal to 0"
      end
      it 'チーム盗塁数がマイナスでは登録出来ない' do
        @team.team_steal = -1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team steal must be greater than or equal to 0"
      end
      it 'チーム得点数がマイナスでは登録出来ない' do
        @team.team_runs = -1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team runs must be greater than or equal to 0"
      end
      it 'チーム失点数がマイナスでは登録出来ない' do
        @team.tema_conceded = -1
        @team.valid?
        expect(@team.errors.full_messages).to include "Tema conceded must be greater than or equal to 0"
      end
      it '試合数が小数では登録出来ない' do
        @team.game_number = 0.1
        @team.valid?
        expect(@team.errors.full_messages).to include "Game number must be an integer"
      end
      it 'チーム勝利数が小数では登録出来ない' do
        @team.team_win = 0.1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team win must be an integer"
      end
      it 'チーム敗北数が小数では登録出来ない' do
        @team.team_lose = 0.1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team lose must be an integer"
      end
      it '引き分け数が小数では登録出来ない' do
        @team.draw = 0.1
        @team.valid?
        expect(@team.errors.full_messages).to include "Draw must be an integer"
      end
      it 'チーム本塁打数が小数では登録出来ない' do
        @team.team_homerun = 0.1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team homerun must be an integer"
      end
      it 'チーム盗塁数が小数では登録出来ない' do
        @team.team_steal = 0.1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team steal must be an integer"
      end
      it 'チーム得点数が小数では登録出来ない' do
        @team.team_runs = 0.1
        @team.valid?
        expect(@team.errors.full_messages).to include "Team runs must be an integer"
      end
      it 'チーム失点数が小数では登録出来ない' do
        @team.tema_conceded = 0.1
        @team.valid?
        expect(@team.errors.full_messages).to include "Tema conceded must be an integer"
      end
    end
    context 'チーム成績を新規登録出来る場合' do
      it '全ての項目が入力されていれば登録できる' do
        expect(@team).to be_valid
      end
    end
  end
end
