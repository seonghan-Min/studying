import json
import folium
import warnings
warnings.simplefilter(action = "ignore", category = FutureWarning)
import pandas as pd

guDF1 = pd.read_csv('1utf8.txt', sep='\t', encoding='UTF-8') #, index_col="gu")
guDF2 = pd.read_csv('2utf8.txt', sep='\t', encoding='UTF-8') #, index_col="gu")
guDF3 = pd.read_csv('3utf8.txt', sep='\t', encoding='UTF-8') #, index_col="gu")
guDF4 = pd.read_csv('4utf8.txt', sep='\t', encoding='UTF-8') #, index_col="gu")


guDF = pd.DataFrame()
guDF = guDF.append(guDF1)
print(guDF.shape)
guDF = guDF.append(guDF2)
print(guDF.shape)
guDF = guDF.append(guDF3)
print(guDF.shape)
guDF = guDF.append(guDF4)
print(guDF.shape)

gu_df = guDF[guDF["si"]=='서울시'].groupby(["gu"])[["visit"]].sum()

# print(guDF[guDF["si"]!='서울시']["si"].unique())
geo_path = 'all_sigugun_utf8.json' #skorea_municipalities_geo_simple.json'
geo_str = json.load(open(geo_path, encoding='utf-8'))
m = folium.Map(location=[37.5502, 126.982], zoom_start=11) #, tiles='Stamen Toner')

map_osm = folium.Choropleth(  #map.choropleth(
                geo_data=geo_str,
               data = gu_df['visit'],
               columns = [gu_df.index, gu_df['visit']],
               fill_color = 'PuRd', #PuRd, YlGnBu
               key_on = 'feature.properties.SIG_KOR_NM').add_to(m)   #feature.id
map_osm.save('토탈_서울.html')



