class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save

    # File.open("db/gossip.json","a") do |f|
    #   f << (JSON.pretty_generate([@content, @author]))
    # end

    CSV.open("db/gossip.csv", "a") do |csv|
      csv << [@content, @author]
    end

  end

  def self.all
    all_gossips = []
    csv_file = CSV.open("db/gossip.csv")
    csv_file.each do |ligne|
        gossip_provisoire = Gossip.new(ligne[1], ligne[0])
        all_gossips << gossip_provisoire
    end
    return all_gossips
  end

  def delete(gossip_to_delete)

end