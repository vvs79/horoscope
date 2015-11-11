
y_, m_, d_ = 0, 0, 0
arr = [2, 4, 6, 9, 11]

def ab
  abort('incorrect'.upcase)
end

puts '--------------------------------------------'

print 'Enter Year when You were born (from 1901 to 2015) : '
y = gets
  ab unless y.size==5 || (1901..2015).include?(y.to_i) 
    y_ = y.to_i
	puts '--------------------------------------------'

print 'Enter Month when You were born (from 1 to 12) : '
m = gets
  ab unless m.size==3 || (1..12).include?(m.to_i) 
    m_ = m.to_i
	puts '--------------------------------------------'

print 'Enter Day when You were born (from 1 to 31) : '
d = gets
  ab unless d.size==3 || (1..31).include?(d.to_i) 
    d_ = d.to_i
	puts '--------------------------------------------'
  
  d_>28 && m_==2 && (y_%4)!=0 ? ab : d_>29 && m_==2 && (y_%4)==0 ? ab : nil
  arr.each {|i| d_>30 && m_==i ? ab : nil}  

  filename = case
    when ( m_==1 && d_<20 ) || ( m_==12 && d_>21 ) 
	  '1'
	when ( m_==1 && d_>19 ) || ( m_==2 && d_<19 )
      '2'
	when ( m_==2 && d_>18 ) || ( m_==3 && d_<21 )
	  '3'
	when ( m_==3 && d_>20 ) || ( m_==4 && d_<20 )
	  '4'
	when ( m_==4 && d_>19 ) || ( m_==5 && d_<21 )
	  '5'
	when ( m_==5 && d_>20 ) || ( m_==6 && d_<21 )
	  '6'
	when ( m_==6 && d_>20 ) || ( m_==7 && d_<23 )
	  '7'
	when ( m_==7 && d_>22 ) || ( m_==8 && d_<23 )
	  '8'
	when ( m_==8 && d_>22 ) || ( m_==9 && d_<23 )
	  '9'
	when ( m_==9 && d_>22 ) || ( m_==10 && d_<23 )
	  '10'
	when ( m_==10 && d_>22 ) || ( m_==11 && d_<22 )
	  '11'
	when ( m_==11 && d_>21 ) || ( m_==12 && d_<22 )
	  '12'
  end
  
  File.open(filename) { |f| f.each { |line| print line } }
  puts ' '
  print 'БУВАЙ ДРУЖЕ--------------------------------------------'
  puts ' '




