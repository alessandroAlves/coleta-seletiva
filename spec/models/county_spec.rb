require 'spec_helper'

describe County do 
	it { should respond_to(:name) }
	it { should respond_to(:code) }
	it { should respond_to(:cnpj) }

	it { should validate_presence_of( :name ) }
	it { should validate_presence_of( :code ) }
	it { should validate_presence_of( :cnpj ) }
end 