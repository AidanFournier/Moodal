require 'rails_helper'

RSpec.describe Post, type: :model do
  # let(:user) { instance_double(User) }

  # before do
  #     # allow(User).to receive(:new).and_return(user) # we intercepted the real #new method, just return the mock double of an instance of Car
  #     post = Post.new(title: "Hello world", content: "The life and times of a Ruby developer")
  #     # user = post.user
  # end

  context 'before publication' do

    post = Post.new(title: "Hello world", content: "The life and times of a Ruby developer")
    # user_1 = object_double(User.new)
    # user_1 = post.User

    it "is valid with valid attributes" do
      expect(post).to be_valid
    end 

    it "is not valid without a title" do
      expect(subject).not_to be_valid
    end 
     
    context 'content' do
      it "is not valid without text" do
        expect(subject).not_to be_valid
      end 

      it "must be a minimum of 5 characters" do
        expect(post.content.length).to be >= 5
      end 

    end 
  end
end
