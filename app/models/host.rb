class Host < ActiveRecord::Base

  def enterprise_type
    case 
    when name.match(/\.edu(\.)*(.*)$/)
      "Educational"
    when name.match(/\.org(\.)*(.*)$/)
      "Non-commercial"
    when name.match(/\.gov(\.)*(.*)$/)
      "Government"
    when name.match(/\.com(\.)*(.*)$/)
      "Commercial"
    end
  end
  
end
