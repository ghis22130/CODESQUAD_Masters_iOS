# 📦VitualBox 설치

## VirtualBox 파일 다운로드

- 참고한 사이트 : <a href="https://hongku.tistory.com/139">우분투 서버(Ubuntu Server) 가상머신(Virtual Box)에 설치하기</a>, <a href="https://hongku.tistory.com/64">MAC북에서 Virtual Box 설치 실패하는 경우</a>
- <a href="https://www.virtualbox.org/wiki/Downloads">VirtualBox</a> 사이트에 접속하여 OS X hosts를 선택해서 VirtualBox를 설치한다. 
  
  <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/VM%EC%84%A4%EC%B9%98.png?raw=true" width="70%" height="70%">

## VirtualBox 설치 오류
- 참고한 사이트 : <a href="https://hongku.tistory.com/64">MAC북에서 Virtual Box 설치 실패하는 경우</a>
- 설치하는 도중 설치에 실패했다는 절망적인 결과를 얻었다.
<img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/VM%EC%98%A4%EB%A5%98.png?raw=true" width="70%" height="70%">

# VirtualBox 설치 오류 해결
- 이를 해결하기 위해 시스템 환경설정 -> 보안 및 개인 정보 보호 에 들어가면 아래에 `개발자 'Oracle America Inc.'의 시스템 소프트웨어가 차단되어 로드할 수 없습니다.`를 확인할 수 있다.
    
    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/Vm%EC%98%A4%EB%A5%982.png?raw=true" width="70%" height="70%">


- `허용`을 눌러주고 다시 설치 과정을 거치면 설치에 성공할 수 있다.
    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/VM%EC%84%A4%EC%B9%98%EC%99%84%EB%A3%8C.png?raw=true" width="70%" height="70%">


# 💿 Linux Ubuntu 설치

## Ububtu 파일 다운로드
- <a href="http://ftp.kaist.ac.kr/ubuntu-cd/20.04/">Ubuntu</a> 사이트에 접속하여 가벼운 우분투 서버 파일인 `ubuntu-20.04.1-live-server-amd64.iso` 을 선택해서 다운받았다.

    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/%EC%9A%B0%EB%B6%84%ED%88%AC%EC%84%A4%EC%B9%980.png?raw=true" width="90%">

- VirtualBox에서 `새로만들기`를 클릭하여 이름과 간단한 설정을 진행해준다.
    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/%EC%9A%B0%EB%B6%84%ED%88%AC%EC%84%A4%EC%B9%981.png?raw=true" width="90%">
    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/%EC%9A%B0%EB%B6%84%ED%88%AC%EC%84%A4%EC%B9%982.png?raw=true" width="90%">


    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/%EC%9A%B0%EB%B6%84%ED%88%AC%EC%84%A4%EC%B9%983.png?raw=true" width="90%">
    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/%EC%9A%B0%EB%B6%84%ED%88%AC%EC%84%A4%EC%B9%984.png?raw=true" width="90%">
    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/%EC%9A%B0%EB%B6%84%ED%88%AC%EC%84%A4%EC%B9%985.png?raw=true" width="90%">
    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/%EC%9A%B0%EB%B6%84%ED%88%AC%EC%84%A4%EC%B9%986.png?raw=true" width="90%">

- 과정을 다 진행하면 일정 시간 후 내가 설정한 서버가 생성된 것을 확인 할 수 있다.
    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/%EC%9A%B0%EB%B6%84%ED%88%AC01.png?raw=true" width="90%">
- 설정 탭을 클릭 후 저장소 탭으로 이동하여 `광학드라이브` 옆 CD를 클릭한 다음 이전에 받아두었던 우분투 이미지를 끌어다 놓는다.
    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/%EC%9A%B0%EB%B6%84%ED%88%AC%EC%84%A4%EC%B9%987.png?raw=true" width="90%">

    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/%EC%9A%B0%EB%B6%84%ED%88%AC%EC%84%A4%EC%B9%988.png?raw=true" width="90%">

- 이미지를 드래그하고 우분투 서버를 실행하면 비로소 우분투 설치를 진행할 수 있다.
    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/%EC%9A%B0%EB%B6%84%ED%88%AC%EC%84%A4%EC%B9%989.png?raw=true" width="90%">
- 설치가 완료된 모습
    <img src="https://github.com/ghis22130/CODESQUAD_Masters_iOS/blob/main/images/cs10-day2/%EC%9A%B0%EB%B6%84%ED%88%AC%EC%84%A4%EC%B9%9815.png?raw=true" width="90%">

# 🔌  ssh 연결
- 참고한 사이트 : <a href="https://velog.io/@younho9/Mac-%EB%B2%84%EC%B6%94%EC%96%BC%EB%B0%95%EC%8A%A4VirtualBox%EC%97%90-%EC%84%A4%EC%B9%98%EB%90%9C-%EC%9A%B0%EB%B6%84%ED%88%ACUbuntu-%EB%A7%A5-%ED%84%B0%EB%AF%B8%EB%84%90%EC%97%90%EC%84%9C-%EC%A0%91%EC%86%8D%ED%95%98%EA%B8%B0">[Mac] 버추얼박스(VirtualBox)에 설치된 우분투(Ubuntu) 맥 터미널에서 접속하기</a>
