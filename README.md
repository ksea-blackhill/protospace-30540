## users テーブル

|   column   |  Type   | Option      |
|----------------------------------- |
| email      |  string | null: false |
| password   |  string | null: false |
| name       |  string | null: false |
| profile    |  text   | null: false |
| occupation |  text   | null: false |
| position   |  text   | null: false |

has_many : prototypes
has_many : comments


## prototypes テーブル

|   column   |  Type       | Option      |
|--------------------------------------- |
| title      |  string     | null: false |
| catch_copy |  text       | null: false |
| concept    |  text       | null: false |
| image      |  do  ActiveStorage        |
| user       |  references |             |

belongs_to : users
has_many   : comments


## comments テーブル

|  column   |  Type      | Option      |
|--------------------------------------|
| text      | text       | null: false |
| user      | references |             |
| prototype | references |             |

belongs_to : users
belongs_to : prototypes


