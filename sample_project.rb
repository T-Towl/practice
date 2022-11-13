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

# /*
#   プロジェクトとそれに関わる人員のアサインを表現したモデルです。
#   上記モデルを利用して、あるプロジェクトにかかる人件費の総額を求める関数とそのテストコードを記載してください。
  
#   ・上記モデルはTypescriptで表現していますが、利用する言語は自由です。
#   ・関数へのデータの渡し方は自由です。
#   ・休日や祝日は考慮しなくて大丈夫です。
# */








require 'date'

# サンプルプロジェクト
project = {
  id: 1,
  name: "string",
  startAt: Date.new(1993, 2, 24),
  endAt: Date.new(1993, 5, 30),
  budget: 1000000
}
pro = project

# サンプルパーソン
persons = [
  person1 = {
    id: 1,
    email: "string",
    unitCost: 10000,
  },
  
  person2 = {
    id: 2,
    email: "string",
    unitCost: 20000,
  }
]

assignments = [
  assignment1 = {
    rate: 50
  },
  
  assignment2 = {
    rate: 70
  }
]

# 関数
def labor_cost(pro, per, ass)
  ea = pro[:endAt]
  sa = pro[:startAt]
  working_days = (ea - sa).to_i
  cost = working_days.to_i * per[:unitCost].to_i 
  cost = cost * ((ass[:rate]).to_f / 100)
  return cost
end

def total_cost(pro, pers, asss)

  t_cost = 0.0

  pers.zip(asss) do |per, ass|
    t_cost += labor_cost(pro, per, ass)
  end

  p t_cost.floor
  
end

total_cost(pro, persons, assignments)
