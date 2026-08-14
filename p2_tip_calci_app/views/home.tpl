<html>
         <head>
                   <title>
                              Tip Calci App by Kamal sir
                   </title>
                   <style>
                           * {
                                  font-size:40px
                                  text-align:center;
                            

                            }
                            body {
                              background-color:azure;
                   </style>
       
                   <script> 
                            function check(event)
                            {
                                  let amt = document.getElementById)("id_amt");
                                  let tip = document.getElementById("id_tip");
                                  let msg = document.getElementById("id_msg");
  
                                  if (amt.value === "")
                                  {
                                          alert("amt cannot be empty");
                                          msg.textContext = "";
                                          amt.focus():
                                          return false;
                                  }
 
                                  if (parseFloat(amt.value) < 10)
                                  {
                                          alert("amt should be min ₹10);
                                          msg.textContent = "";
                                          amt.focus();
                                          return false;
                                  }

                                  if (tip.value === "")
                                  {
                                          alert("tip% cannot be empty");
                                          msg.textContent = "";             
                                          tip.focus();
                                          return false;
                                  }
       
                                  if (parseFloat(tip.value) < 0)
                                  {
                                        alert("tip % should be min 0%");
                                        msg.textContent = "";
                                        tip.focus();
                                        return false;
                                  }

                               return true;
                       }
                     </script>
           </head>

            <body>
                   <h1> Tip Calci App </h1>
                   <form method = "POST" onsubmit="return check(event)">
                         <label> Amount </label>
                         <input type="number"
                                 step="0.01"
                                 name = "amt"
                                 placeholder="Enter Bill Amount"
                                 id = "id_amt"
                          />
                          <br/><br/>
                          <label> Tip % </label>
                          <input type="number"
                                   step="0.01"
                                   name="tip"
                                   placeholder="Enter Tip %" 
                                   id = "id_tip"
                          />
                          <br/><br/>
                          <input type="submit"
                                  value="Find Final Amount"
                          />
                   </form>
                    <h2 id = "id_msg">
                              {{ msg }}
                    </h2>
           </body>
</html>