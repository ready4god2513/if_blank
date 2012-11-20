require "spec_helper"

describe String do
  
  context "replacement" do
    
    it "is present" do
      "value".if_blank("hi").should == "value"
    end
    
    it "is whitespace" do
      " ".if_blank("hi").should == "hi"
    end
    
  end
  
  context "block" do
    
    it "is present" do
      "value".if_blank { "hi" }.should == "value"
    end
    
    it "is whitespace" do
      " ".if_blank { "hi" }.should == "hi"
    end
    
  end

end

describe Array do
  
  context "replacement" do
    
    it "is present" do
      ["value", "value2"].if_blank("hi").should == ["value", "value2"]
    end
    
    it "is whitespace" do
      [].if_blank("hi").should == "hi"
    end
    
  end
  
  context "block" do
    
    it "is present" do
      ["value", "value2"].if_blank { "hi" }.should == ["value", "value2"]
    end
    
    it "is whitespace" do
      [].if_blank { "hi" }.should == "hi"
    end
    
  end

end

describe Hash do
  
  context "replacement" do
    
    it "is present" do
      {:key => "value"}.if_blank("hi").should == {:key => "value"}
    end
    
    it "is whitespace" do
      {}.if_blank("hi").should == "hi"
    end
    
  end
  
  context "block" do
    
    it "is present" do
      {:key => "value"}.if_blank { "hi" }.should == {:key => "value"}
    end
    
    it "is whitespace" do
      {}.if_blank { "hi" }.should == "hi"
    end
    
  end

end