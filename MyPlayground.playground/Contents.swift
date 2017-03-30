import Foundation




// #1. 주어진 배열에서 짝수의 개수를 구하시오.
let array1 = [7,3,5,4,2,10,5,2,6,10]

var cnt = 0
for i in array1 {
    if(i%2==0){cnt+=1}
}
print ("\(cnt)")

print(array1.filter{ $0%2 == 0}.count)


// #2. 주어진 배열안의 원소들의 모든 곱을 구하시오.

let array2 = [7,3,5,4,2,10,8,2]

var cnt1 = 1
for i in array2{
    cnt1 *= i
}
print ("\(cnt1)")

print(array2.reduce(1, *))


// #3. 주어진 배열에서 소수가 아닌 것을 뽑아 배열로 출력하세요 (배열은 2이상의 숫자만 있답니다)!

let array3 = [7,3,5,4,2,10,15]

var arr :[Int] = []
for i in 0..<array3.count {
    
    for j in 2..<array3[i]{
        if (array3[i] % j == 0){
            arr.append(array3[i])
            break
        }
    }
}
print ("\(arr)")


// 4. 주어진 배열을 정렬하시오.
var array4 = [5,4,2,6,1,7,8,3,9,10]


for i in 0..<array4.count-1 {
    for j in i+1..<array4.count {
        if (array4[i] > array4[j]) {
            let temp = array4[i]
            array4[i] = array4[j]
            array4[j] = temp
        }
    }
}

print (array4)

// 5. 주어진 배열에서 각각의 수에 대해 1과 자신을 포함한 약수의 총합을 구하시오.

var array5 = [2,4,6,8,10]

var sum = 0
for i in 0..<array5.count {
    for j in 1..<(array5[i]/2)+1 {
        if (array5[i] % j == 0) {
            sum += j
        }
    }
    sum += array5[i]
}

print (sum)