require 'spec_helper' 

describe Admin::CountiesController do
	let(:county){ County.create name: "Test", code: "123", cnpj: "123456" }

	describe "GET #index" do
		before :each do
			get :index
		end

		it { should respond_with(:success) }
		
		it "should respond a new list of counties" do
			assigns(:counties).should =~ [ county ]
		end
	end

	describe "GET edit" do
		before(:each){ get :edit, id: county.id }

		it { should respond_with(:success) }
		it { should render_template(:edit) }

		it "should respond to a register" do
			assigns(:county).should eq( county )
		end
	end

	describe "GET new" do
		before(:each){ get :new }

		it { should respond_with(:success) }
		it { should render_template(:new) }

		it "should respond to a register" do
			assigns(:county).new_record?.should be_true
		end
	end

	describe "POST create" do
		before(:each){ post :create, county: { name: "Bolas", code: "123", cnpj: "1234" }  }

		it { should respond_with(:redirect) }
		it { should redirect_to( admin_counties_path ) }
    	it { should set_the_flash.to( "salvo com sucesso" ) }

	end	
  
end