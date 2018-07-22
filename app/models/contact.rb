class Contact < ApplicationRecord

    enum contact_type: {
        '商品について': 1,
        '注文について': 2,
        'キャンセルについて': 3,
        '配送について':4,
        'サービスについて': 5
    }

    validates :name, presence: true
    validates :email, presence: true
    validates :content, presence: true

end
