import random

fname = ["John", "James", "Ray", "Nick", "Kevin", "Jessie", "Melissa", "Sally", "Carol", "Garry", "Digi", "Tekken"]
lname = ["Jingle", "Cringle", "Anderson", "Max", "Last", "Hammerlock", "Grommash", "Alexstrasza", "Wanderer", "Longbottom", "Potter"]
flight_ID = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34]
costs = [100, 150, 125, 392, 234, 422, 567, 321, 254]
airline_ID = ["ALA", "SOU", "AME", "UTD", "DEL", "JBL", "ALL", "FRO", "FEM", "SAR"]
airport_ID = ["SJC", "SFO", "LAX", "CHI", "SEA", "YYZ", "BOS", "OAK", "AMS", "FDG"]
model = ["airbus", "taxi", "propeller"]
attendants = [8277391089, 2756182810, 5791881074, 1363410825, 7961085482, 4489624810, 1436103645, 2174531061, 7281110641, 6105559923, 6710841537, 8838771010, 1039765109]
pilots = [4161043766, 8826792810, 7121089887, 9818103795, 9310155798, 9631191108, 4528105774, 2437110466, 2281871029, 7910141314, 8310682310, 5910899108, 6431095105]


def main():
    i = 1
    for instance in flight_ID:
        print("(",instance, ",'", random.choice(airport_ID), "','", random.choice(airport_ID), "','",gen_date(), "',", random.choice(pilots),",", random.choice(attendants),",", random.choice(attendants), ",'",random.choice(airline_ID), "'),")

    # to get airplane data
    # ticket = 0
    # while i < 20:
    #     print("(", i, ",'", random.choice(model), "','", random.choice(airline_ID), "','", gen_date(), "')")
    #     i += 1

    # for instance in flight_ID:
    #     # To generate random tickets
    #     # print("('",str(random.choice(fname)),"',","'", random.choice(lname),"',", random.choice(costs),",'", random.choice(airline_ID),"',", ticket+1,",",random.choice(flight_ID), "),")
    #     print(instance, random.choice(airport_ID), random.choice(airport_ID), )


def gen_date():
    year  = random.randint(2018, 2019)
    month = random.randint(1, 10)
    day   = random.randint(1, 30)
    if day < 10:
        day = "0" + str(day)
    if month < 10:
        month = "0" + str(month)

    date = str(year) + "-" + str(month) + "-" + str(day)
    return date


if __name__ == "__main__":
    main()
