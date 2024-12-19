class User < ApplicationRecord
  # Incluindo todos os módulos do Devise, incluindo o omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [ :google, :facebook ]
end
