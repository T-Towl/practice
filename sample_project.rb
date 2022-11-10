# type Project = {
#   id: number;  
#   name: string;
#   startAt: Date;
#   endAt: Date;
#   budget: number;
# };

# type Person = {
#   id: number;
#   email: string;
#   unitCost: number;
# };

# type Assignment = {
#   id: number;
#   projectId: number;
#   personId: number;
#   startAt: Date;
#   endAt: Date;
#   rate: number; // 稼働率
# };

require 'date'

# 関数
def labor_cost(pro, per)
  ea = pro[:endAt]
  sa = pro[:startAt]
  working_days = (ea - sa).to_i
  cost = working_days.to_i * per[:unitCost].to_i
  puts "#{cost}円"
end

# サンプルプロジェクト
Project = {
  id: 1,
  name: "string",
  startAt: Date.new(1993, 2, 24),
  endAt: Date.new(1993, 5, 30),
  budget: 1000000
}

# サンプルパーソン
Person = {
  id: 1,
  email: "string",
  unitCost: 10000,
}

pro = Project
per = Person
labor_cost(pro, per)
