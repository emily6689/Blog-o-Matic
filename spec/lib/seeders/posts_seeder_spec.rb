require 'spec_helper'

describe 'Seeders::PostsSeeder' do
  it 'should seed posts' do
    previous_count = Post.count
    Seeders::PostsSeeder.seed
    expect(Post.count).to eql(previous_count + 10)
  end

  it 'should not duplicate posts' do
    previous_count = Post.count
    Seeders::PostsSeeder.seed
    expect(Post.count).to eql(previous_count + 10)
    Seeders::PostsSeeder.seed
    expect(Post.count).to eql(previous_count + 10)
  end
end
