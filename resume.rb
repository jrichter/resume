require 'yaml'

# My resume in ruby code
class Resume
  def self.name
    'Justin Richter'
  end

  def self.contact
    phone = '(918) 812-3249'
    email = 'jrichter@jetfive.com'
    "Cell: #{phone}, Email: #{email}"
  end

  def self.location
    street = '9626 E. 161st Street S.'
    city = 'Bixby'
    state = 'OK'
    zip = '74008'
    "#{street}, #{city} #{state} #{zip}"
  end

  def self.summary
    current = 'I am currently working at Tulsa Spine and Specialty Hospital as'\
              'the Lead Radiology Tech.'
    what_i_want = 'I use ruby to make my PACS Admin job easier. I want to use'\
                  'ruby all the time.'
    "#{current} #{what_i_want}"
  end

  def self.experience
    YAML.load_file('./yaml/exp.yml')
  end

  def self.skills
    File.open('./text/skills.txt', 'r').readlines
  end

  def self.education
    YAML.load_file('./yaml/edu.yml')
  end

  def self.hobbies
    File.open('./text/hobbies.txt', 'r').readlines
  end

  def self.links
    YAML.load_file('./yaml/links.yml')
  end

  def self.picture
    File.open('./text/picture.txt', 'r').readlines
  end

  def self.about
    'I am married, 11 years! We have two awesome kids, a 9 year old boy and an'\
    ' 8 year old girl. We have two dogs, three cats and fish.'
  end
end
