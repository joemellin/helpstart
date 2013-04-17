namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    50.times do |n|
      puts "[DEBUG] creating user #{n+1} of 10"
      name = Faker::Name.name
      email = "user-#{n+1}@exxxxcample.com"
      profile_pic = File.open(Dir.glob(File.join(Rails.root, 'sampleimages', '*')).sample)
      password = "password"
      User.create!( name: name,
                    email: email,
                    password: password,
                    password_confirmation: password,
                    profile_pic: profile_pic)
    end

    User.all.each do |user|
      puts "[DEBUG] uploading images for user #{user.id} of #{User.last.id}"
      1.times do |n|
        image = File.open(Dir.glob(File.join(Rails.root, 'sampleimages', '*')).sample)
        title = ["Biz Dev Help","iOS User Testing Help","Cofounder Testing","Pitch Help / Founder Coaching","Help","Pitch Help / Founder Coaching Boom Boom"].sample
        description = %w(Design BizDev Amazingboom Fundraising adorbs incredible).sample
        user.skills.create!(image: image, description: description, title: title)
      end
    end
  end
end