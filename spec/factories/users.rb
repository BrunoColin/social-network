FactoryBot.define do
    factory :user do
        name {"Bruno"}
        email {"user@user.com"}
        phone {"12412412"}
        password {"123qwe"}
        avatar {Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png')}
    end
end