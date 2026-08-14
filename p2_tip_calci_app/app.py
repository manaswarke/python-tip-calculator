from bottle import *

application = Bottle()

@application.route("/", method=["POST", "GET"])
def home():
       if request.method == "POST":
               try:
                     amt = float(request.forms.get("amt"))
               except ValueError:
                     msg = "amt should be in numbers only"
                     return template("home.tpl", msg=msg)
               if amt < 10:
                     msg = "min.amt should be ₹10"
                     return template("home.tpl", msh=msg)
              
               try:
                     tip = float(request.forms.get("tip"))
               except ValueError:
                     msg = "tip should be in numbers only"
                     return template("home.tpl", msg=msg)
               if tip < 0:
                     msg = "min. tip% can be 0"
                     return template("home.tpl", msg=msg)
       
               final_amt = amt + (amt* (tip/100))
               msg = "Final Amt = " + str(round(final_amt,2))
               return template("home.tpl", msg=msg)

       else:
               return template("home.tpl", msg="")

run(application,host="localhost", port=4050, debug=True, reloader=True)
             