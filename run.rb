require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  # code!

#Create states array
@states=[]

#Create states hash
@state={id:'NY', name: 'New York'}

#Add state hash to the state array
@states << @state

#Add more state hashes to the array
@state={id:'FL', name: 'Florida'}
@states << @state

@state={id:'MI', name: 'Michigan'}
@states << @state

@state={id:'OH', name: 'Ohio'}
@states << @state

@state={id:'CT', name: 'Connecticut'}
@states << @state

#Sort array alphabetically by state's name
@states.sort_by! {|s| s[:name]}



  erb :states, layout: :main
end
