require './lib/data_manager.rb'
class NightWriter

	def run 
		DataManager.new.run
	end
end

NightWriter.new.run