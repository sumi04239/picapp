require 'rails_helper'

RSpec.describe Answer, type: :model do
  before do 
    @answer = FactoryBot.build(:answer)
  end

  describe '相談に対するコメント' do
    context '相談に対するコメントを投稿できる' do
      it '1コメントが0文字以上であれば投稿できる' do
        @answer.text = 'aaa'
      end
    end

    context '相談に対するコメントを投稿できない' do
      it 'コメントが空だと投稿できない' do
        @answer.text = ' '
        @answer.valid?
        expect(@answer.errors.full_messages).to include("Text can't be blank")
      end
    end
  end
end
