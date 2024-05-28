# 1. 패키지 설정(처음이라면 패키지를 설치할 것)
import time

import pandas as pd
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver import Keys
from selenium.webdriver.common.by import By
from selenium.common.exceptions import ElementNotInteractableException
import pandas as pd
from geopy.geocoders import Nominatim

# POST 요청으로 데이터 전송
import requests
import json



# 라이브러리 추가
from selenium.webdriver.chrome.options import Options

# 브라우저 꺼짐 방지 + 자동화 메세지 제거 옵션
chrome_options = Options()
chrome_options.add_experimental_option("detach", True)
chrome_options.add_experimental_option("excludeSwitches", ["enable-automation"])

# 브라우저(크롬) 실행
driver = webdriver.Chrome(options=chrome_options)

# 주소 입력
url = "https://korean.visitkorea.or.kr/list/travelinfo.do?service=cs"
driver.get(url)

time.sleep(2)

driver.maximize_window()
time.sleep(2)

# 최초 16개, 버튼 한번 클릭시 16개씩 추가
# more_btn = driver.find_element(By.CSS_SELECTOR, '#contents > div > div.hotplace_sub > div.box_wrap > div.list.hotplace_list > div.more > button')
# more_btn.click()

# geo_local = Nominatim(user_agent='South Korea')

# 위도, 경도 반환하는 함수
# def geocoding(address):
#     try:
#         geo=geo_local.geocode(address)
#         x_y =[geo.latitude,geo.longitude]
#         return x_y

#     except:
#         return[0,0]


# 리스트 타입으로 생성
visit_list = []
img_list = []

time.sleep(2)

# 코스 1페이지 (10개)의 정보를 가져온다
course = driver.find_elements(By.CSS_SELECTOR,'#contents > div.wrap_contView.clfix > div.box_leftType1 > ul > li')
    
# index 4번은 삭제
del course[4]

k=0
for visit in course:
    # a herf속성 대신 onclick 주소를 가져와서 새로운 url을 만든다
    visit_url = 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.do?cotid=' + visit.find_element(By.CSS_SELECTOR,'a').get_attribute('onclick')[10:46] + '&big_category=C01&mid_category=C0112'

    #코스 사진
    img_list.append(visit.find_element(By.CSS_SELECTOR, 'div.photo > a > img').get_attribute('src'))
    visit_list.append(visit_url)

    if k == 4 : 
        break
    k+=1

detail_list = []
py_list = []

def visit_detail(url, l) : 
    
    # 코스 1개의 정보
    driver.get(url)
    time.sleep(2)

    # 코스 제목 & 주소
    course_title = driver.find_element(By.CSS_SELECTOR,'#contents > div.titleType1 > div.tit > h2').text
    course_addr  = driver.find_element(By.CSS_SELECTOR, '#contents > div.titleType1 > div.area_address > span.address').text
    print(course_title)

    # 코스별 여러개의 코스를 가져온다
    visits1 = driver.find_elements(By.CSS_SELECTOR,'#contents > div.course_detail > div.relation_cos > div.cos_wrap > div.pc > div > ul > li')
    print(f'코스 갯수 : {len(visits1)}')
    time.sleep(2)
    j=1
    for visit, i in zip(visits1, range(len(visits1))):
        # 5번 코스 이후 다음 슬라이드로 이동
        if i%4==0 and i!=0:
            driver.find_element(By.XPATH, '//*[@id="contents"]/div[2]/div[6]/div[1]/div[1]/div/div[2]').click()
    
        # n번 코스 클릭
        visit.find_element(By.CSS_SELECTOR,'a').click()
    
        # n번 코스 정보
        visits = driver.find_elements(By.CSS_SELECTOR,'#tabCont > div')
        
        # n번 코스 상세정보
        title = visits[i].find_element(By.CSS_SELECTOR,'div.title > div > strong > a').text
        addr = visits[i].find_element(By.CSS_SELECTOR,'div.title > span').text

        # n번 코스 부가 이미지
        img = []
        
        for k in range(1, 4) :
            img.append(visits[i].find_element(By.CSS_SELECTOR, f'#cosTab0{j} > div > div.info_area.pc > div > div:nth-child({k}) > a').get_attribute('style')[17:103])
        
        # xy = geocoding(course_addr)
        
        py_info = {
            "course_img" : img_list[l],
            "course_title" : title,
            "course_addr" : course_addr,
            "addr" : addr,
            # "x" : xy[0],
            # "y" : xy[1],
            "img1" : img[0],
            "img2" : img[1],
            "img3" : img[2]
        }

        py_list.append(py_info)
        print(py_info)

        j+=1
        time.sleep(2)

    # print(py_list)
        

l=0
for url in visit_list:
    visit_detail(url, l)
    l+=1

# 스프링 서버의 엔드포인트
serverURL = "http://localhost:9090/tour/insertMaps"



headers = {'Content-Type' : 'application/json'}
response = requests.post(serverURL, json=py_list, headers=headers)

# 서버 응답 출력
# response.status_code => 성공 200, 오류 400, 404, 405, 500 등
if response.status_code == 200 :
    print('Spring으로 데이터 전송 성공')
    driver.close()
else :
    print(response.status_code)