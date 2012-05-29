require 'spec_helper'

describe PagesController do
   render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                        :content => "Ruby on Rails Tutorial Sample App| Home")
    end

    it "should have a non-blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/      #nie trzeba robic w kazdym
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title" ,
      :content => "#{@base_titile} | Home")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title" ,
      :content => "#{@base_titile} | About")
    end


  end

   describe "GET 'help'" do
     it "returns http success" do
       get 'help'
       response.should be_success
     end

     it "should have the right title" do
       get 'help'
       response.should have_selector("title" ,
                                     :content => "#{@base_titile} | Help")
     end
   end
end
