require 'rails_helper'

RSpec.describe Team, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  
  describe 'チームデータ新規登録' do
    context 'チームデータを新規登録出来ない場合' do
      it '試合数が空では登録出来ない' do
        @team.gama_number = ''
        @team.valid?
        expect(@team.errors.full_messages).to include ""
      end
      it 'チーム名が空では登録出来ない' do
        @team.gama_name_id = ''
        @team.valid?
        expect(@team.errors.full_messages).to include ""
      end
      it '勝利数が空では登録出来ない' do
        @team.team_win = ''
        @team.valid?
        expect(@team.errors.full_messages).to include ""
      end
      it '敗北数が空では登録出来ない' do
        @team.team_lose = ''
        @team.valid?
        expect(@team.errors.full_messages).to include ""
      end
      it '引き分け数が空では登録出来ない' do
        @team.draw = ''
        @team.valid?
        expect(@team.errors.full_messages).to include ""
      end
      it 'ゲーム差が空では登録出来ない' do
        @team.game_difference = ''
        @team.valid?
        expect(@team.errors.full_messages).to include ""
      end
      it 'チーム防御率が空では登録出来ない' do
        @team.team_defense = ''
        @team.valid?
        expect(@team.errors.full_messages).to include ""
      end
      it 'チーム打率が空では登録出来ない' do
        @team.team_batting_average = ''
        @team.valid?
        expect(@team.errors.full_messages).to include ""
      end
      it 'チーム本塁打数が空では登録出来ない' do
        @team.team_homerun = ''
        @team.valid?
        expect(@team.errors.full_messages).to include ""
      end
      it 'チーム盗塁数が空では登録出来ない' do
        @team.team_steal = ''
        @team.valid?
        expect(@team.errors.full_messages).to include ""
      end
      it 'チーム得点数が空では登録出来ない' do
        @team.team_runs = ''
        @team.valid?
        expect(@team.errors.full_messages).to include ""
      end
      it 'チーム失点数が空では登録出来ない' do
        @team.tema_conceded = ''
        @team.valid?
        expect(@team.errors.full_messages).to include ""
      end
      it '試合数が0以下では登録出来ない' do
        @team.game_number = '0'
        @team.valid?
        expect(@team.errors.full_messages).to include ''
      end
      it 'チーム名に「---」が選択されている場合は出品できない' do
        @team.category_id = 1
        @team.valid?
        expect(@team.errors.full_messages).to include ''
      end
      it 'チーム勝利数が0円以では登録出来ない' do
        @team.team_win = '0'
        @team.valid?
        expect(@team.errors.full_messages).to include ''
      end
      it 'チーム敗北数が0円以では登録出来ない' do
        @team.game_number = '0'
        @team.valid?
        expect(@team.errors.full_messages).to include ''
      end
    end
    context 'チームデータを新規登録出来る場合' do
      it '全ての項目が入力されていれば登録できる' do
        expect(@team).to be_valid
      end
    end
  end
end
