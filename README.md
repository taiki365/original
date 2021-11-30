# テーブル設計

## users テーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |

### Association



## games テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| team   | references | null: false, foreign_key: true |
| day    | date       | null: false                    |
| place  | string     | null: false                    |

### Association

- has_many : teams
- has_one : result

## results テーブル

| Column | Type       | Options                        |
| -------| ---------- | ------------------------------ |
| score  | integer    | null: false                    |
| game   | references | null: false, foreign_key: true |

### Association

- belongs_to :game

## teams テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| game_number | integer    | null: false                    |
| team_name   | string     | null: false                    |
| draw        | integer    | null: false                    |
| batter      | references | null: false, foreign_key: true |
| pitcher     | references | null: false, foreign_key: true |


### Association

- belongs_to :game
- has_many :batters
- has_many :pitchers

## batters テーブル

| Column        | Type    | Options     |
| ------------- | ------- | ----------- |
| batter_name   | string  | null: false |
| bat           | integer | null: false |
| rbi           | integer | null: false |
| single        | integer | null: false |
| double        | integer | null: false |
| triple        | integer | null: false |
| homerun       | integer | null: false |
| walks         | integer | null: false |
| dead_ball     | integer | null: false |
| sacrifice_fly | integer | null: false |
| strikeout     | integer | null: false |
| steal         | integer | null: false |
| steal_dead    | integer | null: false |
| runs          | integer | null: false |

### Association

- belongs_to :team

## pitchers テーブル

| Column                     | Type    | Options     |
| -------------------------- | ------- | ------------|
| pitcher_name               | string  | null: false |
| damage_hit                 | integer | null: false |
| defense                    | float   | null: false |
| win                        | integer | null: false |
| lose                       | integer | null: false |
| conceded                   | integer | null: false |
| damage_homerun             | integer | null: false |
| gave_walks                 | integer | null: false |
| gave_dead_ball             | integer | null: false |
| inning                     | integer | null: false |
| damage_batting_average     | float   | null: false |
| damage_base_percentage     | float   | null: false |
| qs                         | integer | null: false |
| damage_slugging_percentage | float   | null: false |

### Association

- belongs_to :team