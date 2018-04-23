adminRole = Role.new
adminRole.name = 'Administrator'
adminRole.save

companyRole = Role.new
companyRole.name = 'Company Admin'
companyRole.save

# Create the admin user
user = User.new
user.email = 'admin@webcam.com'
user.password = User.digest_password(ENV['TEST_PASS'])
user.name = 'Admin'
user.role = adminRole
user.save!

#create vmedia company
vmediac = Company.new
vmediac.name = 'Virtual Media Company'
vmediac.save!

# Create the vmediac user
user = User.new
user.email = 'admin@vmediac.com'
user.password = User.digest_password(ENV['TEST_PASS'])
user.name = 'Admin'
user.role = companyRole
user.company = vmediac
user.save!

#create head queartes
sura = HeadQuarte.new
sura.name = "Sede Suramericana"
sura.company = vmediac
sura.save!

la80 = HeadQuarte.new
la80.name = "Sede La 80"
la80.company = vmediac
la80.save!

# create platforms
platforms = %w(STREAM F4F LJ CHB MFC CAM4)
platforms.each do |platform_name|
  default_platform = DefaultPlatform.new
  default_platform.name = platform_name
  default_platform.save!

  platform = Platform.new
  platform.name = platform_name
  platform.company = vmediac
  platform.default_platform = default_platform
  platform.save!
end