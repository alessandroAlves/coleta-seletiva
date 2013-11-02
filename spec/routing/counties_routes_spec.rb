require 'spec_helper'

describe "counties routes" do 

	it "GET #index" do
		{ :get => "/admin/counties" }.should route_to( controller: "admin/counties", action: "index" )
	end

	it "GET #new" do
		{ :get => "/admin/counties/new" }.should route_to( controller: "admin/counties", action: "new" )
	end	
	it "POST #create" do
		{ :post => "/admin/counties" }.should route_to( controller: "admin/counties", action: "create" )
	end

	it "GET #edit" do
		{ :get => "/admin/counties/1/edit" }.should route_to( controller: "admin/counties", action: "edit", id: "1")
	end

	it "PATCH #update" do
		{ :patch => "/admin/counties/1" }.should route_to( controller: "admin/counties", action: "update", id: "1")
	end

	it "GET #show" do
		{ :get => "/admin/counties/1" }.should route_to( controller: "admin/counties", action: "show", id: "1")
	end

	it "DELETE #destroy" do
		{ :delete => "/admin/counties/1" }.should route_to( controller: "admin/counties", action: "destroy", id: "1")
	end

end