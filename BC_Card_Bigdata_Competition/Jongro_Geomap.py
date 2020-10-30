import json
import folium
import warnings
warnings.simplefilter(action = "ignore", category = FutureWarning)
import pandas as pd


# guDF1 = pd.read_csv('유동인구일집계_201904utf8.csv', sep=',', encoding='UTF-8') #, index_col="gu")
# guDF2 = pd.read_csv('유동인구일집계_201905utf8.csv', sep=',', encoding='UTF-8') #, index_col="gu")
guDF3 = pd.read_csv('유동인구일집계_202004utf8.csv', sep=',', encoding='UTF-8') #, index_col="gu")
guDF4 = pd.read_csv('유동인구일집계_202005utf8.csv', sep=',', encoding='UTF-8') #, index_col="gu")

# guDF1["행정동번호"] = guDF1["행정동번호"].apply(lambda x : str(x)+"00")
# guDF2["행정동번호"] = guDF2["행정동번호"].apply(lambda x : str(x)+"00")
guDF3["행정동번호"] = guDF3["행정동번호"].apply(lambda x : str(x)+"00")
guDF4["행정동번호"] = guDF4["행정동번호"].apply(lambda x : str(x)+"00")

guDF = pd.DataFrame()
# guDF = guDF.append(guDF1)
# print(guDF.shape)
# guDF = guDF.append(guDF2)
# print(guDF.shape)
guDF = guDF.append(guDF3)
print(guDF.shape)
guDF = guDF.append(guDF4)
print(guDF.shape)

gu_df = guDF.groupby(["행정동번호"])[["인구수"]].sum()

print(gu_df.head(20))



# print(guDF[guDF["si"]!='서울시']["si"].unique())
geo_path = 'HangJeongDong_ver20200701.geo.json'
geo_str = json.load(open(geo_path, encoding='utf-8'))

m = folium.Map(location=[37.5502, 126.982], zoom_start=11) #, tiles='Stamen Toner')

map_osm = folium.Choropleth(  #map.choropleth(
                geo_data=geo_str,
               data = gu_df['인구수'],
               columns = [gu_df.index, gu_df['인구수']],
               fill_color = 'PuRd', #PuRd, YlGnBu
               key_on = 'feature.properties.adm_cd2').add_to(m)   #feature.id
map_osm.save('유동인구_행정동별_종로2020.html')
#
# #
# # # # code = ['11110650','11110680','11110580','11110710','11110700','11110640','11110600','11110560','11110615','11110540','11110550','11110570','11110670','11110515','11110630','11110530','11110690']
# # # # name = ['혜화동','창신2동','교남동','숭인2동','숭인1동','이화동','가회동','평창동','종로1.2.3.4가동','삼청동','부암동','무악동','창신1동','청운효자동','종로5.6가동','사직동','창신3동']
