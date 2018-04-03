=begin

자신만의 메소드 사전을 만듭니다!

def 이름_메소드명     #메소드에 대한 설명
  메소드사용
  #=> 예상되는결과
end

다음과 같은 형식으로 아래의 #메소드작성 주석뒤에 코드를 작성합니다.
Ruby On Rails를 사용하면서 가장많이 사용하는 Ruby의 요소는 method 입니다.
method를 많이 알아둔다면 그만큼 코딩이 쉬워질거예요.
가능한 많은 메소드를 직접 irb로 써보세요.
이번과제는 여러분이 공부하는만큼 스스로 가져가는게 많은 과제일거예요.
화이팅하세요! 과제 형식이나 버그에 관련해서는 언제나 질문하세요.

=end

#매번 새로운 변수를 만들기 귀찮다면 아래를 사용해도 되고 각자 만들어 사용해도 됩니다.
var_integer = 123
var_string = "likelion"
var_boolean_1 = true
var_boolean_2 = false
var_array = [1,2,3,4,5]
var_hash = {
  key1: 1,
  key2: 2,
  key3: "likelion",
  key4: "konkuk",
  key5: true,
  key6: false
}

#메소드 만들기 예시
def miyeon_length   #배열이나 문자열의 길이를 측정하는 메소드
  a = [1,2,3]
  b = "likelion"
  puts a.length
  puts b.length
  # => 3
  # => 8
end

#메소드 주석 (여기부터 메소드를 작성하세요.)
def cheers
  puts "beers! yeah!"
end

#1
def test(a1 = "Ruby", a2 = "Perl") # 단어를 입력하면 자동으로 문장속에 단어가 들어가게 작성 
   puts "The programming language is #{a1}"  #a1에 들어가는 단어가 문장속으로 들어간다
   puts "The programming language is #{a2}"  #a2에 들어가는 단어가 문장속으로 들어간다
end

#2
def output_something(value) #값을 입력하면 바로 값을 보여준다. 
  puts value 
end

#3
def calculate_value(x,y) #입력한 두숫자의 합을 보여주는 함수 
  x + y
end

#4
def some_method(value='default', arr=[]) #value 값에 들어간 값은 그대로 보여주고 행렬로 arr에 들어가는 값은 길이를 보여준다. 
  puts value
  puts arr.length
end

#5
 def gen_times(factor) #factor 변수를 받아서 곱셈으로 나타내는 함수 
     return Proc.new {|n| n*factor }
 end
#6
  def values  #values 라는 단어를 [1,2,3]으로 정의
   [1, 2, 3]
  end
#7
 def try_ret_procnew #함수이름을  입력하면 Baaam이 출력된다. 
     ret = Proc.new { return "Baaam" }
     ret.call
     "This is not reached"
 end
#8
 def foo(*my_string)  #여러가지 단어들을 하나의 벡터에 포함시킨다. 
  my_string.inspect  
 end  
#9
 def mtd(a=99, b=a+1)  #mtd 를 입력하면 [99,100]이 입력된다. 
  [a,b]  
 end 
#10
 def doSomething(value) #정수에 2를 곱한다.
    if (value.is_a?(Integer)) #입력한 값이 정수인경우
        print value * 2 #2를 곱한다.
    else #아닌경우
        print "Error: Expected integer value" #에러메시지 표시 
        exit
    end
 end

#11
 def my_method(number) #숫자를 입력하면 정수로 만들어 주는 함수
  number = Integer(number)
 end
#12
def my_info(name, options = {}) #이름과 단어들을 입력하면 문장으로 나타내 준다. 
    options = {age: 27, weight: 160, city: "New York"}.merge(options) #option을 통해서 입력하지 않은 값들은 자동 입력
    puts "My name is #{name}, my age is #{age}, my weight is #{weight} and I live in {city}"
end

#13
def directory_exists?(directory) #디렉토리에 파일이 있는지 여부를 판단하는 함수
  File.directory?(directory)
end
#14
def my_method(options) #입력되는 값의 hash를 보여준다.
    if options[:arg1] and options[:arg2] #두개인 경우 두개다 보여주고
    elsif options[:arg1] #값이 하나인 경우 하나만 보여준다. 
end

#15
def fix_minutes #60이 지날 때마다 1이 추가되는 함수 
  until (0...60).member? minutes #0~60을 분으로 설정
    @hours -= 60 <=> minutes #minutes이 60이상이면 hour는 +1 60이면 그대로 60보다 작으면 1을 빼준다.
    @minutes += 60 * (60 <=> minutes) #minutes은 순서대로 정렬하여  60을 더하거나 빼준다.
  end
  @hours %= 24 
  self
end


#16
def maximum(list)  #벡터값을 넣으면 최대값을 보여주는 함수
  len = list.size - 1 
  maximum = list[0] 
  for i in 1..len
    if maximum < list[i]
        maximum = list[i]
    end
  end
  maximum
end

#17
def calculator(a, operation, b) #숫자 a,b와 연산(operation)을 넣으면 값을 표시해주는 함수
  a.send(operation, b)
end

#18
def embiggen(str) #변수로 입력되는 단어를 !!! 를 붙혀서 대문자로 나타내주는 함수 
   str = "#{str}!!!"
   str = str.upcase
   return str
end

#19
def foo(str1, str2) #두개의 영어단어를 입력하면 첫글자를 대문자화 시켜서 보여준다. 
   puts "#{str1}{str2}".capitalize
   str2
end

#20
def triple_add(a, b, c) #입력되는 3가지 숫자를 x하나의 변수로 받아서 문장으로 완성시키는 함수 
   x = a.to_s + b.to_s + c.to_s
   "#{x}!"
end   

#21 
def multiply(val1, val2 ) #두 숫자 변수의 곱을 나타내는 함수
     result = val1 * val2
     puts result
end
#22
def say_hi(name="user") #이름을 넣으면 문장이 완성되는 함수 
  if name=="user" then # 단 이름에 user라고 넣는 경우 다른 결과가 나온다. 
    puts "Greetings!"
  else
    puts 'Hello, #{name}!'
  end
end

#23
def test #결과값들이 각각 다른 줄에 나오게 하는 함수 
  <<~END #<<~ 는 콘텐츠 안에서 줄이 다르면 다른 라인으로 인식한다. 
    First content line.
      Two spaces here.
    No space here.
  END
end

#24
def is_odd(x) #숫자를 입력했을 때 홀수 이면 true  짝수이면 False출력 
  if x % 2 == 0
    return false
  else
    return true
  end
end

#25
def mood(name, *feelings) #이름과 feeling에 들어가는 여러가지 단어들을 문장 하나를 완성 시키면서 모두 보여주는 함수 
  feelings.each do |feeling|
    puts "#{name} is feeling #{feeling} today."
  end
end

#26
def multiply(*numbers) #numbers에 여라가지 수를 입력하면 모두 곱해진 값을 출력한다. 
    numbers.reduce(:*)
end

#27
def sqr(x)  #숫자값을 입력하면 제곱을 구해주는 함수 . 
    return x*x
end

#28
def suma(a, b) #크기를 비교해주는 함수 
  "#{a} 가 #{b} 보다 작다" if a > b
  "#{a} 가 #{b} 보다 크다"
end

#29
 def percent_of(n) #퍼센테이지를 계산 해주는 함수
    self.to_f / n.to_f * 100.0
end  #입력 형태는 p(숫자1).percent_of(숫자2) => 숫자 2 대비 숫자1의 퍼센트를 보여준다. 

#30
def get_score_value(value) #숫자를 입력하면 소수점 두자리 까지 반올림해서 결과값을 보여준다
  (value or 0).round(2)
end


#여기 이 두 주석 사이에 메소드를 작성하시면 됩니다~

puts "==================================="
puts "=========메소드 사전만들기========="
puts "==================================="

dic_flag = 0

while dic_flag == 0
  puts "1. 검색         2. 종료"

  user_input = gets.chomp.to_i

  case user_input
  when 1
    puts "검색할 메소드를 입력하세요"
    send(gets.chomp)
  when 2
    puts "종료합니다"
    dic_flag += 1
  else
    puts "1과 2중 다시 입력해주세요."
  end
end
