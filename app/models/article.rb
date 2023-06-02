class Article < ApplicationRecord
    validates :name, presence: { message: ":Please Enter the Name"}
    validates :age, presence: { message: ":Please Enter the Age"}
    validates :phn, presence: { message: ":Please Enter the Phn"}, numericality: true , length: { is: 10 }
    validates :email, confirmation: true
    validates :termsandcondition, acceptance: true
   

end
