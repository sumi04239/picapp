require 'rails_helper'

RSpec.describe Album, type: :model do
  before do 
    @album = FactoryBot.build(:album)
  end

  describe '写真を投稿' do 
    context '写真の投稿ができる' do
      it '全てが入力され芸れば投稿できる' do
        expect(@album).to be_valid
      end
    it 'titleが10文字以上であれば投稿できる' do 
        @album.title = 'aaaaaaaaaa'
        expect(@album).to be_valid
      end
      it 'textが10文字以上であれば投稿できる' do
        @album.text = 'aaaaaaaaaa'
        expect(@album).to be_valid
      end
      it '画像が存在すれば投稿できる' do
        expect(@album).to be_valid
      end
    end

    context '写真の投稿ができない' do
      it 'titleが空だと投稿できない' do
        @album.title = ''
        @album.valid?
        expect(@album.errors.full_messages).to include("Title can't be blank")
      end
      it 'textが空だと投稿できない' do
        @album.text = ''
        @album.valid?
        expect(@album.errors.full_messages).to include("Text can't be blank")
      end
      it 'titleが10文字以上じゃないと投稿できない' do
        @album.title = 'aaa'
        @album.valid?
        expect(@album.errors.full_messages).to include("Title is too short (minimum is 10 characters)")
      end
      it 'textが10文字以上じゃないと投稿できない' do
        @album.text = 'aaa'
        @album.valid?
        expect(@album.errors.full_messages).to include("Text is too short (minimum is 10 characters)")
      end
    end
  end
end
