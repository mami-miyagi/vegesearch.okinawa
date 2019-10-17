import os
import sqlite3
from bottle import route, run, debug, template, request, static_file, error, redirect, response ,datetime

# トップページにアクセスしたときの動き(日本語)
@route('/')
def top():
    return template('top')

@route('/search_list')
def search_list():
    vegan_check = request.GET.getunicode("vegan") # ユーザーがチェックした項目を取得する
    area_check = request.GET.getunicode("area")

    conn = sqlite3.connect('vegetables.db')
    c = conn.cursor()

    restaurant_list = []

    if vegan_check == "1" and area_check == "south":
        c.execute("select id,img_1,res_name,address,time,style from check_search where vegan = 1 and  south = 1")

    elif vegan_check == "1" and area_check == "mid":
        c.execute("select id,img_1,res_name,address,time,style from check_search where vegan = 1 and  mid = 1")

    elif vegan_check == "1" and area_check == "north":
        c.execute("select id,img_1,res_name,address,time,style from check_search where vegan = 1 and  north = 1")

    elif vegan_check == "0" and area_check == "south":
        c.execute("select id,img_1,res_name,address,time,style from check_search where south = 1")

    elif vegan_check == "0" and area_check == "mid":
        c.execute("select id,img_1,res_name,address,time,style from check_search where mid = 1")

    elif vegan_check == "0" and area_check == "north":
        c.execute("select id,img_1,res_name,address,time,style from check_search where north = 1")

    elif vegan_check == "1":
        c.execute("select id,img_1,res_name,address,time,style from check_search where vegan = 1")

    elif vegan_check == "0":
        c.execute("select id,img_1,res_name,address,time,style from check_search")

    else:
        c.execute("select id,img_1,res_name,address,time,style from check_search")


    for row in c.fetchall():
        restaurant_list.append({"id":row[0],"img_1":row[1],"res_name": row[2],"address": row[3],"time":row[4],"style":row[5]})

    conn.close()

    return template('search_list',restaurant_list = restaurant_list)

@route('/restaurant/<id:int>')
def restaurant(id):
    conn = sqlite3.connect('vegetables.db')
    c = conn.cursor()

    c.execute("select res_name,style,tel,address,map,time,close,parking,smoking,credit,img_1,img_2,img_3 from detail where id = ?",(id,))

    res_detail_list = []
    for row in c.fetchall():
        res_detail_list.append({"res_name":row[0],"style":row[1],"tel":row[2],"address":row[3],"map":row[4],"time":row[5],"close":row[6],"parking":row[7],"smoking":row[8],"credit":row[9],"img_1":row[10],"img_2":row[11],"img_3":row[12]})

    c.close()

    return template("restaurant",res_detail_list = res_detail_list )

# トップページにアクセスしたときの動き(英語)
@route('/en')
def top_en():
    return template('top_en')

@route('/search_list_en')
def search_list_en():
    vegan_check = request.GET.getunicode("vegan_en") # ユーザーがチェックした項目を取得する
    area_check = request.GET.getunicode("area_en")

    conn = sqlite3.connect('vegetables.db')
    c = conn.cursor()

    restaurant_list_en = []

    if vegan_check == "yes" and area_check == "south_en":
        c.execute("select id,img_1,res_name,address,time,style from check_search_en where vegan = 1 and  south = 1")

    elif vegan_check == "yes" and area_check == "mid_en":
        c.execute("select id,img_1,res_name,address,time,style from check_search_en where vegan = 1 and  mid = 1")

    elif vegan_check == "yes" and area_check == "north_en":
        c.execute("select id,img_1,res_name,address,time,style from check_search_en where vegan = 1 and  north = 1")

    elif vegan_check == "no" and area_check == "south_en":
        c.execute("select id,img_1,res_name,address,time,style from check_search_en where south = 1")

    elif vegan_check == "no" and area_check == "mid_en":
        c.execute("select id,img_1,res_name,address,time,style from check_search_en where mid = 1")

    elif vegan_check == "no" and area_check == "north_en":
        c.execute("select id,img_1,res_name,address,time,style from check_search_en where north = 1")

    elif vegan_check == "no":
        c.execute("select id,img_1,res_name,address,time,style from check_search_en where vegan = 1")

    elif vegan_check == "yes":
        c.execute("select id,img_1,res_name,address,time,style from check_search_en")

    else:
        c.execute("select id,img_1,res_name,address,time,style from check_search_en")


    for row in c.fetchall():
        restaurant_list_en.append({"id":row[0],"img_1":row[1],"res_name": row[2],"address": row[3],"time":row[4],"style":row[5]})

    conn.close()

    return template('search_list_en',restaurant_list_en = restaurant_list_en)

@route('/restaurant_en/<id:int>')
def restaurant_en(id):
    conn = sqlite3.connect('vegetables.db')
    c = conn.cursor()

    c.execute("select res_name,style,tel,address,map,time,close,parking,smoking,credit,img_1,img_2,img_3 from detail_en where id = ?",(id,))

    res_detail_list_en = []
    for row in c.fetchall():
        res_detail_list_en.append({"res_name":row[0],"style":row[1],"tel":row[2],"address":row[3],"map":row[4],"time":row[5],"close":row[6],"parking":row[7],"smoking":row[8],"credit":row[9],"img_1":row[10],"img_2":row[11],"img_3":row[12]})

    c.close()

    return template("restaurant_en",res_detail_list_en = res_detail_list_en )


@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')


run(port="8080" ,debug=True, reloader=True)
