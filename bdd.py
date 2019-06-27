import pymysql
import pymysql.cursors
from flask import jsonify


connect = pymysql.connect(host='localhost', user='root',
                          password='', db='projet_devlogiciel', port=3308)


def getplant():
    with connect.cursor() as cursor:

        # define request
        sql = "SELECT * FROM `plante`"

        # execute
        cursor.execute(sql)

        # store
        rows = cursor.fetchall()

        # rows into json
        resp = jsonify(rows)

        # set the retun code
        resp.status_code = 200

        # send response
        return resp


def insertplant(name):
        with connect.cursor() as cursor:
                #cursor.execute("INSERT INTO 'plante' ('Id', 'Nom', 'Categorisation','Description','Humidite_opti','Lumi_opti','Periode_Floraison','Photo','Temperature_opti') VALUES ('', '"+name+"', 'testcateg', 'testdescript', 'testhumi','testlumi', 'testperiode', 'testphoto', 'testtemp')")
                sql = "INSERT INTO 'plante' ('Id', 'Nom', 'Categorisation',Description',Humidite_opti','Lumi_opti','Periode_Floraison','Photo','Temperature_opti') VALUES (%c,%s,%s,%s,%c,%c,%s,%s,%c)"
                cursor.execute(sql, ('', 'testnom', 'testcateg', 'testdescript', 'testhumi','testlumi', 'testperiode', 'testphoto', 'testtemp'))

        connect.commit()