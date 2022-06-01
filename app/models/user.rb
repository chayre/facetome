# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  firstname            :string           not null
#  lastname             :string           not null
#  email                :string           not null, unique
#  birthday             :date             not null
#  sex                  :string           not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  remember_created_at  :datetime
#  encrypted_password   :string
#  reset_password_token :string
#  admin                :boolean          not null, default(FALSE)
#
# Indexes
#
#  index_users_on_email     (email) UNIQUE
#  index_users_on_username  (username) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
