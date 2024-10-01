# So-Mack-Sa
SoMacKSa
<br>
<br>

# [K8S] 쿠버네티스를 활용한 3-Tier 웹서비스 구축
<br>
<br>

> [ First 프로젝트 규칙 ] \
\
컨테이너 환경구성 ( Web : NginX ,WAS : Tomcat , DB : MySQL)\
WEB-WAS-DB 연동 \
 -> 3-Tier 구성 \
    ( WEB : 정적페이지 처리  , WAS : 동적페이지 처리, DB : 데이터 처리 ) \
\
부하에 따른 Autoscaling \
\
컨테이너 이미지 - hub.docker.com \
웹페이지의 정보 (가격, 수량 , 내용 등) 버전에 대한 변경사항 \
\
서비스 호출 시 로컬호스트 (ubuntu 페이지)\
<br>
<br>

## 📆 진행 기간 
2023.12.22 ~ 2024.01.15 (4주) \
제출일 : 2024.01.15.화 오전 00시 \
발표일 : 2024.01.18.목 
<br>  
<br>  
 
## 🛠 사용 기술 Stack
### OS 
<img src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=black"> 

### Container 
<img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white"> 
<img src="https://img.shields.io/badge/nginx-009639?style=for-the-badge&logo=nginx&logoColor=white"> 
<img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">
<img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">

### Skill
<img src="https://img.shields.io/badge/grafana-F46800?style=for-the-badge&logo=grafana&logoColor=white">
<img src="https://img.shields.io/badge/Prometheus-E6522C?style=for-the-badge&logo=Prometheus&logoColor=white">
<img src="https://img.shields.io/badge/k6-7D64FF?style=for-the-badge&logo=k6&logoColor=white">
<img src="https://img.shields.io/badge/influxdb-22ADF6?style=for-the-badge&logo=influxdb&logoColor=white">
<img src="https://img.shields.io/badge/helm-0F1689?style=for-the-badge&logo=helm&logoColor=white">
<img src="https://img.shields.io/badge/argocd-EF7B4D?style=for-the-badge&logo=argocd&logoColor=white">

### Team Collabolation Tool
<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
<img src="https://img.shields.io/badge/notion-000000?style=for-the-badge&logo=notion&logoColor=white">
 
### Drawing Tool
<img src="https://img.shields.io/badge/drawio-F08705?style=for-the-badge&logo=drawio&logoColor=white">
<br>  
<br>  


## 💁‍♂️ 담당 업무
<div align=center>
 
![image](https://github.com/JJungeee/So-Mack-Sa/assets/142209884/d2d6dba2-b286-499f-aeec-04ba9eb12566)
![image](https://github.com/JJungeee/So-Mack-Sa/assets/142209884/dd24be06-6b44-449d-bcb4-acb072ade4c4)
![image](https://github.com/JJungeee/So-Mack-Sa/assets/142209884/2412da4e-1eaf-456a-93ca-ccb7a89605fa)
![image](https://github.com/JJungeee/So-Mack-Sa/assets/142209884/6c4c4d10-a896-4c6d-a173-e3ad96fe421b)

</div>
<br>  
<br>  

## 📖 상세 내용
### Infra Architecture
<div align=center>
 
![image](https://github.com/JJungeee/So-Mack-Sa/assets/142209884/6d517292-3852-4b08-b8da-04b7143ff1e1)

</div>

### skill
<div align=center>
 
![그림5](https://github.com/JJungeee/So-Mack-Sa/assets/142209884/6624b90d-a35c-4240-aae7-401f666d9ecf)

</div>

### Web page
<div align=center>
 
![그림12](https://github.com/JJungeee/So-Mack-Sa/assets/142209884/7412332e-1410-4567-a589-d1ddd2246118)
![제목 없는 다이어그램-굴개굴개의 복사본](https://github.com/JJungeee/So-Mack-Sa/assets/142209884/ed1331cd-ddc3-40f4-9554-3a646bab18ef)

</div>
<br>  
<br>  
<br>


## 🔗 구축 과정
### 🔶 프로젝트 진행 과정
1. 쿠버네티스 인프라 구축
2. image를 안전하게 공유하기 위한 repository 구축
3. 프로젝트 환경 구성
4. 쿠버네티스 설치
5. loadbalancer 구축
6. metric 수집을 위해 prometheus 설치
7. 수집된 metric의 시각화를 위해 grafana 설치
8. 3-Tier Application 이미지 배포
9. ArgoCD 로 웹 서비스 배포
10. 롤링 업데이트 및 롤백 실행 
 <br> 
 <br> 
  

### Notion
<img src="https://img.shields.io/badge/notion-000000?style=for-the-badge&logo=notion&logoColor=white">

 [Kubernetes 3-Tier Web-Service Project](https://www.notion.so/Kubernetes-3-Tier-Web-Service-Project-36422789fa5d469fa8a3f0809b8f17f2?pvs=4)
 
 <br> 
 <br> 
  
# So-Mack-Sa
SoMacKSa
<div align=center>
 <a href="https://github.com/JJungeee/So-Mack-Sa/github-readme-stats">
    <img src="https://github-readme-stats.vercel.app/api/top-langs/?username=JJungeee&layout=donut&show_icons=true&theme=material-palenight&hide_border=true&bg_color=20232a&icon_color=58A6FF&text_color=fff&title_color=58A6FF&count_private=true&exclude_repo=Face-Transfer-Application" width=38% />
</a>    
<a href="https://github.com/JJungeee/So-Mack-Sa/github-readme-stats">
  <img src="https://github-readme-stats.vercel.app/api?username=JJungeee&show_icons=true&theme=material-palenight&hide_border=true&bg_color=20232a&icon_color=58A6FF&text_color=fff&title_color=58A6FF&count_private=true" width=56% />
</a>
<a href="https://github.com/JJungeee/So-Mack-Sa/github-readme-activity-graph">
    <img src="https://github-readme-activity-graph.vercel.app/graph?username=JJungeee&theme=react-dark&bg_color=20232a&hide_border=true&line=58A6FF&color=58A6FF" width=94%/>
</a>
</div>
