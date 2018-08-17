# class Company
#  has_many :dogs, through: :employee
# end
# Dog also want to define, but can't ..
# belongs_to :comapny, through: :employee
#
# and "self.employee.company" in Dog, it abuse Law of Demeter, LoD
# do it like this.
delegate :company, :to => :employee, allow_nil: :true


# if you want validate it with associated model
class CompanyEmployee < ActiveRecord::Base
  belongs_to :company
  belongs_to :employee, validate: true

  # => it{expect{company.employees << employees}.to raise_error(ActiveRecord::RecordInvalid)}
end