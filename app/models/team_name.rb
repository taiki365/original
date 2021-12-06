class TeamName < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '阪神タイガース' },
    { id: 3, name: '東京ヤクルトスワローズ' },
    { id: 4, name: '読売ジャイアンツ' },
    { id: 5, name: '広島東洋カープ' },
    { id: 6, name: '中日ドラゴンズ' },
    { id: 7, name: '横浜DeNAベイスターズ' }
  ]

   include ActiveHash::Associations
   has_many :teams
end