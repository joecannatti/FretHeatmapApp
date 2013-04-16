namespace :music_data do

  desc "Load data form tab_processor"
  task(:load => :environment) do
    Fretboard.delete_all
    Dir[File.join("results", "*")].map do |file_name|
      content = File.new(file_name, "r").read
      content = JSON.parse(content)
      Fretboard.new(content).save!
    end
  end

end
