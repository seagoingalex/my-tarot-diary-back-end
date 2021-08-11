class User < ApplicationRecord
    has_one :personalProfile
    has_one :publicProfile

    has_secure_password

end
