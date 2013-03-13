require 'spec_helper'

describe Subscriber do
  describe '.new' do
    it 'creates an intance of Subscriber' do
      subscriber = Subscriber.new
      expect(subscriber).to be_an_instance_of(Subscriber)
    end
    it 'has username, email, password and password_confirmation' do
      subscriber = Subscriber.new(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(subscriber.username).to eq 'bob'
      expect(subscriber.email).to eq 'bob@gmail.com'
      expect(subscriber.password).to eq 'a'
      expect(subscriber.password_confirmation).to eq 'a'
    end
  end

  describe '.create' do
    it 'has an id' do
      subscriber = Subscriber.create(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(subscriber.id).to_not be nil
    end
  end
end
