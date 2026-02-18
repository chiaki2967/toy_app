class User < ApplicationRecord
    # ユーザーは複数のマイクロポストがある
    has_many :microposts

    # 空欄だと保存できない
    validates :name, presence: true
    validates :email, presence: true
end
