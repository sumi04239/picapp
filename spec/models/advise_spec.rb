require 'rails_helper'

RSpec.describe Advise, type: :model do
  before do
    @advise = FactoryBot.build(:advise)
  end

  describe '相談の内容を投稿' do
    context '相談の内容を投稿できる時' do
      it '全てが入力されていれば投稿できる' do 
        expect(@advise).to be_valid
      end
      it 'titleが10文字以上であれば投稿できる' do
        @advise.title = 'aaaaaaaaaaa'
        expect(@advise).to be_valid
      end
      it 'textが10文字以上であれば投稿できる' do
        @advise.text = 'aaaaaaaaaaa'
        expect(@advise).to be_valid
      end
    end

    context '相談の内容を投稿できない時' do
      it 'titleが空だと投稿できない' do
        @advise.title = ' '
        @advise.valid?
        expect(@advise.errors.full_messages).to include("Title can't be blank")
      end
      it 'textが空だと投稿できない' do
        @advise.text = ' '
        @advise.valid?
        expect(@advise.errors.full_messages).to include("Text can't be blank")
      end
      it 'titleが10文字以上じゃないと投稿できない' do
        @advise.title = 'aaa'
        @advise.valid?
        expect(@advise.errors.full_messages).to include("Title is too short (minimum is 10 characters)")
      end                                               
      it 'textが10文字以上じゃないと投稿できない' do
        @advise.text = 'aaa'
        @advise.valid?
        expect(@advise.errors.full_messages).to include("Text is too short (minimum is 10 characters)")
      end
    end
  end
end
