class Order < ApplicationRecord
    after_create { MagicLinkMailer.magic_link(self).deliver }
end
