class View

  def create_gossip
    puts
    puts "ℹ️  - Qui est l'auteur de ce gossip !?"
    puts
    print "🖍  > "
    puts view_author = gets.chomp
    puts
    puts "ℹ️  - C'est quoi le gossip !?"
    puts
    print "🖍  > "
    puts view_content = gets.chomp
    puts
    return params = {content: view_content, author: view_author}
  end

  def index_gossips(gossips)
    gossips.each do |gossip|
      puts "#{gossip.content} - #{gossip.author}"
    end
    puts
  end

  def delete_gossip
    puts
    puts "ℹ️  - Quel gossip souhaite-tu supprimer ?"
    puts
    print "🖍  > "
    puts gossip_to_delete = gets.chomp
    puts
    return gossip_to_delete
  end
  

end