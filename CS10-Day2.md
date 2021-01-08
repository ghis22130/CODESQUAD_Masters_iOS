# 📦VitualBox 설치

## VirtualBox 파일 다운로드

- 참고한 사이트 : <a href="https://hongku.tistory.com/139">우분투 서버(Ubuntu Server) 가상머신(Virtual Box)에 설치하기</a>, <a href="https://hongku.tistory.com/64">MAC북에서 Virtual Box 설치 실패하는 경우</a>
  <a href="https://www.virtualbox.org/wiki/Downloads">다운로드 링크</a>
  
  <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/VM%EC%84%A4%EC%B9%98.png?raw=true" width="70%" height="70%">


따라서, 모든 트럭이 다리를 지나려면 최소 8초가 걸립니다.

solution 함수의 매개변수로 다리 길이 bridge_length, 다리가 견딜 수 있는 무게 weight, 트럭별 무게 truck_weights가 주어집니다. 

이때 모든 트럭이 다리를 건너려면 최소 몇 초가 걸리는지 return 하도록 solution 함수를 완성하세요.

## 제한 사항

- bridge_length는 1 이상 10,000 이하입니다.
- weight는 1 이상 10,000 이하입니다.
- truck_weights의 길이는 1 이상 10,000 이하입니다.
- 모든 트럭의 무게는 1 이상 weight 이하입니다.

## 입출력 예

| bridge_length | weight | truck_weights                   | return |
| ------------- | ------ | ------------------------------- | ------ |
| 2             | 10     | [7,4,5,6]                       | 8      |
| 100           | 100    | [10]                            | 101    |
| 100           | 100    | [10,10,10,10,10,10,10,10,10,10] | 110    |


## 문제 풀이

```python
def solution(bridge_length, weight, truck_weights):
    ing_truck = []
    answer = 0
    max_truck = 0

    while ing_truck or truck_weights:
        for i in ing_truck:
            i[1]+=1

        if ing_truck and ing_truck[0][1]==bridge_length:
            max_truck-=ing_truck[0][0]
            ing_truck.pop(0)
            
        if  truck_weights and truck_weights[0]+max_truck<=weight:
            new_truck = truck_weights.pop(0)
            ing_truck.append([new_truck,0])
            max_truck+=new_truck
        answer+=1
        
    return answer
```

- ***큐를 이용한 문제***
- ```now_weight``` = 현재 다리 위 무게
- ```ing_truck``` = 다리위를 지나고있는 트럭의 무게와 경과시간
- ```new_truck``` = 새로 다리에 들어갈 트럭
- 대기중인 트럭, 다리 위를 지나고있는 트럭이 모두 없을때 까지 반복
- 다리 위 트럭의 경과시간이 다리의길이와 같아지면 지나간것으로 판단하여 ```pop()```, 현재 다리 위 무게를 갱신해준다.
- 다음 대기중인 트럭이 다리위에 추가되어도 괜찮으면 ```ing_truck```에 push
- 시간 증가

참고 : <https://programmers.co.kr/learn/courses/30/lessons/42583>