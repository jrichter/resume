require 'yaml'

class Resume

  def self.name
    'Justin Richter'
  end

  def self.contact
    phone = '(918) 812-3249'
    email = 'jrichter@jetfive.com'
    return "Cell: #{phone}, Email: #{email}"
  end

  def self.location
    street = '9626 E. 161st Street S.'
    city = 'Bixby'
    state = 'OK'
    zip = '74008'
    return "#{street}, #{city} #{state} #{zip}"
  end

  def self.summary
    current = 'I am currently working at Tulsa Spine and Specialty Hospital as the Lead Radiology Tech.'
    what_I_want = 'I use ruby to make my PACS Admin job easier. I want to use ruby all the time.'
    return "#{current} #{what_I_want}"
  end

  def self.experience
    exp = YAML.load_file('./yaml/exp.yml')
  end

  def self.skills
    skills = File.open('./text/skills.txt','r').readlines
  end

  def self.education
    edu = YAML.load_file('./yaml/edu.yml')
  end

  def self.hobbies
    hobbies = File.open('./text/hobbies.txt','r').readlines
  end

  def self.links
    links = YAML.load_file('./yaml/links.yml')
  end

  def self.picture
    picture = File.open('./text/picture.txt', 'r').readlines
    return picture
  end

  def self.about
    'I am married, 11 years! We have two awesome kids, a 9 year old boy and an 8 year old girl. We have two dogs, three cats and fish.'
  end
end
