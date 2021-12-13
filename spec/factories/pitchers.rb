FactoryBot.define do
  factory :pitcher do
    pitcher_name               { 'あ' }
    damage_hit                 { '11' }
    defense                    { '11' }
    win                        { '11' }
    lose                       { '11' }
    conceded                   { '11' }
    damage_homerun             { '11' }
    gave_walks                 { '11' }
    gave_dead_ball             { '11' }
    inning                     { '11' }
    damage_batting_average     { '11' }
    damage_base_percentage     { '11' }
    qs                         { '11' }
    damage_slugging_percentage { '11' }
  end
end