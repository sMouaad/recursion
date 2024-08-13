def fibs(n)
  arr = [0,1]
  n.times do
    arr.push(arr[-1] + arr[-2])
  end
  arr[0..n]
end

def fibs_rec(n,x = [])
  if n == 1
    x.push(0)
    x.push(n)
    n
  elsif n == 0
    x.push(n)
    n
  else
    value = fibs_rec(n-1,x) + fibs_rec(n-2)
    x.push value
    value
  end
end

p fibs(8)
x = []
p fibs_rec(8,x)
p x