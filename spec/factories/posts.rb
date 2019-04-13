FactoryBot.define do
  factory :post do
    title {'a' * 20}
    content {'a' * 20}
    user
    category
    # ユーザとカテゴリの関連付けの設定は、ファクトリー内にファクトリーの名前を書くだけ
  end
end