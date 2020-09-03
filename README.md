## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|default(string)|null: false, index: true|
|email|default(string)|null: false|
|encrypted_password|string|null: false, default: ""|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|last_name|string|null: false|
|last_name_kana|string|null: false|
|birthday|date|null: false|

### Association
- has_many: items
  has_many: item_transactions


## addressesテーブル
|Column|Typeああ|Options|
|------|----|-------|
|name|string|null: false|
|postal_code|integer|null: false|
|prefecture|integer|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string|
|phone_number|string|null: false|
|item_transaction_id|integer|foreign_key: true|

### Association
- belongs_to: item_transction


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|price|intger|null: false|
|info|text|null: false|
|scheduled_delivery_id(acitve_hash)|integer|null: false|
|shipping_fee_status_id(acitve_hash)|integer|null: false|
|prefecture_id(acitve_hash)|integer|null: false|
|sales_status_id(acitve_hash)|integer|null: false|
|category_id(acitve_hash)|integer|null: false|
|user_id(FK)|integer|foreign_key: true|

### Association
- belongs_to: user
  has_one: item_transaction


## item_transactionsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|group_id|integer|foreign_key: true|

### Association
- belongs_to: item
- belongs_to: user
  has_one: address

