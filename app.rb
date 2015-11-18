require 'sinatra'
require 'haml'
require './resume.rb'

set :name, Resume.name
set :contact, Resume.contact

get '/' do
  haml :index, locals: { about: Resume.about,
                         links: Resume.links['links'],
                         summary: Resume.summary,
                         hobbies: Resume.hobbies.join }
end

get '/exp' do
  haml :experience, locals: { exp: Resume.experience }
end

get '/edu' do
  haml :education, locals: { edu: Resume.education }
end

get '/contact' do
  haml :contact, locals: { contact: Resume.contact }
end

get '/ascii' do
  haml :ascii, locals: { ascii: Resume.picture }
end

get '/skills' do
  haml :skills, locals: { skills: Resume.skills.join }
end
