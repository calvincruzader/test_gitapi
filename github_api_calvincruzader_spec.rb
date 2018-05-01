require 'airborne'

describe 'Tests api.github.com/users/calvincruzader functionality' do

  context 'test GET functionality' do
    before(:all) do
      get 'https://api.github.com/users/calvincruzader'

    end

    it 'checks that the HTTP responds with 200 correctly since the endpoint exists' do
      status = headers['status']
      expect(status).to eq '200 OK'
    end

    it 'check that the type returned is JSON' do
      type = headers['content_type'].split(' ')[0]
      expect(type).to eq 'application/json;'
    end

    it 'checks that the ID associated with the endpoint is correct (its should be me)' do
      username = json_body[:login]
      expect(username).to eq 'calvincruzader'
    end
  end

  context 'test POST' do

    it 'should add a new to the end of the bio' do
      # token = 'd49417cab88dff7d037afae605e5aabeb9627fd8'
      # url = 'https://api.github.com/users/calvincruzader'
      #
      # get url
      # new_bio = json_body[:bio] + ' TEST'
      # put url, {'something_not_in_the_body': new_bio}, {'Authorization' => token}
      #
      # get url, {'access-token' => token}
      # p json_body
      # p headers
    end

  end
end