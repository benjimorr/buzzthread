require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "My Question Title", body: "My Question Body", resolved: false) }

  describe "attributes" do
      it "has a title attribute" do
          expect(question).to respond_to(:title)
      end

      it "has a body attribute" do
          expect(question).to respond_to(:body)
      end

      it "has a resolved attribute" do
          expect(question).to respond_to(:resolved)
      end
  end
end
