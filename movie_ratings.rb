movies = {
  Rushmore: 4
  }

puts "What would you like to do? "
puts "Type 'add' to add a title"
puts "Type 'update to update a movie's rating"
puts "Type 'display' to display all titles"
puts "Type 'delete' to delete a title"

choice = gets.chomp

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "How do you rate the movie between 1 and 4?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}"
  else
    puts "That movie has already been added! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "What movie would you like to update? "
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "That movie is not in the database."
  else
    puts "What is the new rating? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title}'s rating has been updated to #{rating}"
  end
when "display"
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when "delete"
  puts "Which movie would you like to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "That movie does not exist."
  else
    movies.delete(title.to_sym)
    puts "#{title} has been deleted"
  end
else
  puts "Please type either add, update, display or delete"
end
