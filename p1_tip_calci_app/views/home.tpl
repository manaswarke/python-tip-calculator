<html>
    <head>
        <title>
            Tip Calci App by Manas Warke
        </title>
        <style>
            * {
                font-size:40px;
                text-align:center;
            }
            body {
                background-color:azure;
            }
        </style>
    </head>
    
    <body>
        <h1>Tip Calci App</h1>
        <form method="POST">
            <label> Amount </label>
            <input type="number"
                step="0.01"
                name="amt"
                placeholder="Enter Bill Amount"
                required
                min="10"
            />
            <br/><br/>
            <label> Tip % </label>
            <input type="number"
                step="0.01"
                name="tip"
                placeholder="Enter Tip %"
                required
                min="0"
            />
            <br/><br/>
            <input type="submit"
                value="Find Final Amount"
            />
        </form>
        <h2>
            {{ msg }}
        </h2>
    </body>
</html>