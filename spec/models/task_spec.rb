require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'バリデーション確認' do
    context 'タイトルが未入力の時' do
      it '作成できないこと' do
        task = Task.new(title: nil)
        task.valid?
        expect(task.errors[:title]).to include("can't be blank")
      end
    end
    context 'ステータスが未入力の時' do
      it '作成できないこと' do
        task = Task.new(status: nil)
        task.valid?
        expect(task.errors[:status]).to include("can't be blank")
      end
    end
  end
end
