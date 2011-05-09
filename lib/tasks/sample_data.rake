require 'faker'
namespace :db do  
  desc "Fill database with sample data"  
  task :populate => :environment do   
    Rake::Task['db:reset'].invoke    
    make_users    
  end
end
def make_users  
  admin = User.create!(:name => "root",                       
                       :email => "sbeall@scires.com",                       
                       :password => "mvick7",                       
                       :password_confirmation => "mvick7")  
 admin.toggle!(:admin)
 
 end