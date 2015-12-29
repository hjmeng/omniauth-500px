require 'spec_helper'

describe OmniAuth::Strategies::f00px do
  subject do
    OmniAuth::Strategies::f00px.new({})
  end

  context "client options" do
    it 'should have correct name' do
      subject.options.name.should eq("f00px")
    end

    it 'should have correct site' do
      subject.options.client_options.site.should eq('https://api.500px.com')
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_path.should eq('/v1/oauth/authorize')
    end
  end
end
