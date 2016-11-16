from furl import furl

url="https://www.compareraja.in/mobiles.html?&minPrice=230&maxPrice=80000&sort=Popularity&categoryId=8&CategoryNameInURLs=mobiles&p_csv_Filter_01_Ids=&p_csv_Filter_02_Ids=&p_csv_Filter_03_Ids=&p_csv_Filter_04_Ids=&p_csv_Filter_05_Ids=&p_csv_Filter_06_Ids=&p_csv_Filter_07_Ids=&p_csv_Filter_08_Ids=&p_csv_Filter_09_Ids=&p_csv_Filter_10_Ids=&p_csv_Filter_11_Ids=&p_csv_Filter_12_Ids=&p_csv_Filter_13_Ids=&p_csv_Filter_14_Ids=&p_csv_Filter_15_Ids=&p_csv_Filter_16_Ids=&p_csv_Filter_17_Ids=&searchparam="

f = furl(url)
pid= f.args['categoryId']
catName = f.args['CategoryNameInURLs']
print(pid,catName)

#=8&CategoryNameInURLs
