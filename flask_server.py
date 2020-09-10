from flask import Flask, request, render_template, redirect
from dao import student
import os

app = Flask(__name__)
app.secret_key="0123456789"

@app.route("/")
def index():
	return render_template("index.html")

@app.route("/table_img")
def table_img():
	return render_template("table_img.html")

@app.route("/form_select")
def form_select():
	return render_template("form_select.html")

@app.route("/Team3_Home")
def selfie_home():
	return render_template("Team3_Home.html")

@app.route("/student_call")
def student_call():
	result = student.getStudent()
	return render_template("student.html", object_list=result)

@app.route("/studentAct", methods=["GET", "POST", "PUT", "DELETE"])
def studentAct():
	if request.method =='GET':
		return student.getStudent()
	elif request.method == 'POST':
		name = request.form['name1']
		kor = request.form['kor1']
		mat = request.form['mat1']
		eng = request.form['eng1']
		sungData = {'name':name, 'kor':kor, 'mat':mat, 'eng':eng}
		return student.setStudent(sungData)
	elif request.method == 'DELETE':
		name = request.form['id']
		return student.delStudent(name)
	elif request.method=='PUT':
		sungData = request.form
		return student.putStudent(sungData)


	
if __name__ == '__main__':
	app.run(debug = True, host = '0.0.0.0', port = 5500)