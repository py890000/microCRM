class Monit < ActiveRecord::Base
  attr_accessible :desc, :name, :script, :state

 def self.exeue_script
      p "--------"
      p Monit.count
       Monit.all.each do |monit|

         p monit.script

         temp = Monit.find_by_sql(monit.script)
         p temp[0]
         monit.desc= temp.to_s



         monit.save!


       end
  end
end
