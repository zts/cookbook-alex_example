actions :create, :delete

attribute :name, :kind_of => String, :name_attribute => true

def initialize(*args)
super
@action = :create
end

