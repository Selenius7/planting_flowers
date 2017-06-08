require 'csv'

class FlowersParser
  NUM_OF_HEADERS = 1
  def initialize(params = {})
    @file = params[:file]
  end

  def parse
    parsed = CSV.read @file
    parsed.drop(NUM_OF_HEADERS).each do |flower_string|
        flower_obj = {
        f_name: flower_string[0],
        culture_id: flower_string[1].to_i,
        cost: flower_string[2].to_i,
        garden_bed_id: flower_string[3].to_i,
        planting_date: DateTime.parse(flower_string[4]),
        note_id: flower_string[5].to_i
      }
     Flower.find_or_create_by!(flower_obj)
    end
  end
end