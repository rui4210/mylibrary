class Book < ApplicationRecord
  #アソシエーション
  belongs_to :user

  #本情報
  #必須であること
  with_options presence: true do
    #タイトル
    validates :title
    #登録日
    validates :record_date
    #読書状況
    validates :reading_situation
  end

  
end
