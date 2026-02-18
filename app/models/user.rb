class User < ApplicationRecord
    # ユーザーは複数のマイクロポストがある
    has_many :microposts
end
