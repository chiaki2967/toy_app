class Micropost < ApplicationRecord
    #マイクロポストは1人のユーザーに属する 
    belongs_to :user

    # ポストは最大140文字
    validates :content, length: { maximum: 140}
end
