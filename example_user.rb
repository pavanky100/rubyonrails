class User
attr.accessor :name, :email
def initialize(attributes = {})
@name = attributes[:name]
@email = attributes[:email]
end
def formatted_email
"#{@name} <#{@email}>"
end
end