<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SBook2.aspx.cs" Inherits="GPL.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /*center{
            align-items:center;
            justify-content:center;
        }*/
        
        .BRB46SR {
            border-bottom: 2px solid red ;
            text-align:left;
            /*border-bottom: 1px solid;
            border-bottom-color:red;*/           
        }
        .BATscr{
            padding: 16px 50px 16px 16px;
        }
        .Border{
            /*border-bottom: 1px solid red;*/
            /*border-top: 1px solid rgba(0, 0, 0, 2.07);*/
            /*border-top:1px solid red;*/
            /*border:solid;*/
            border-top-color:red;
            border-top-style:solid;
            border-top-width:initial;
            font-size:14px;
        }
        .story{
            font-size:12px;
        }
        /*div
        {
        display: block;
        }*/
        thead {
            display: table-header-group;
            vertical-align: middle;
            border-color: inherit;

        }
        .BatName{
            padding: 8px 4px;
            padding-bottom: 2px;
            width: 250px;
            text-align: center;
        }
        .BatName1
        {
            padding: 8px 4px;
            padding-bottom: 2px;
            width: 24px;
            text-align: center;
        }
        
        .Navbar,.Team{
            padding: 8px 4px;
            padding-bottom: 2px;
            width: 450px;
            text-align: center;
            border-radius:15px;
        }
        .Navbar:hover,.Team:hover{
            background-color:yellow;          
            border-radius: 5rem;
            color:black;
            transition: background 0.5s;
        }
        .Scorecard-active,.ScoreBook-active,.Team1-active,.Team2-active{
            text-align: center;
            border-radius:15px;
        }
        .Scorecard-active:hover,.ScoreBook-active:hover,.Team1-active:hover,.Team2-active:hover{
            background-color:green;          
            border-radius: 5rem;
            color:white;
            transition: background 0.5s;
        }
        .SCR_Head{
            position:fixed;
            width: 84%;
            height:10%;
            top:6px;
            right:7px;
            z-index: 1000;
            display: flex;
            align-items: center;
            justify-content:center;
            background-color:wheat;
            box-shadow: 0 8px 11px red;
            padding: 20px 100px;
            transition: 0.5s;
        }
        /*section{
            padding: 4.5rem 0 1.5rem;
        }*/
        .Top_Space{
            padding-top: 120px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div class="SCR_Head">
        <div>
        <table>
            <tr>
                <td> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                <td>Run/Wickets<br />(Overs)</td>
                <td>Run/Wickets<br />(Overs)</td>
                <td> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
            </tr>
            <tr>
           <table class="Navbar">
            <tr>
                <td><a href="#Scorecard" class="Scorecard-active">Scorecard</a></td>
                <td><a href="#ScoreBook" class="ScoreBook-active">ScoreBook</a></td>                               
            </tr>
        </table>

            </tr>
        </table>
        </div>
        </div>

        <section class="Scorecard" id="Scorecard">
        <div class="Top_Space">
        <div>
        <table class="Team">
            <tr>
                <td><a href="#Team1" class="Team1-active" onclick="changeContent1()">Team1</a></td>
                <td><a href="#Team2" class="Team2-active" onclick="changeContent()">Team2</a></td>
            </tr>
        </table>
        </div>

        <div id="Part1">
        <div class="BATscr">
            <table class="BRB46SR">
                <thead>
                    <tr>
                        <th class="BatName">Batting</th>
                        <th class="BatName1">R</th>
                        <th class="BatName1">B</th>
                        <th class="BatName1">4s</th>
                        <th class="BatName1">6s</th>
                        <th class="BatName1">S/R</th>
                    </tr>
                </thead>
            </table>
            <table>
                <tbody>
                    <tr class="Border">
                        <td class="BatName">Rohit Sharma</td>
                        <td class="BatName1">98</td>
                        <td class="BatName1">91</td>
                        <td class="BatName1">7</td>
                        <td class="BatName1">3</td>
                        <td class="BatName1">102</td>
                    </tr>
                    <tr class="story">
                        <td colspan="6">c Adil Rashid b Liam Livingstone</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr class="Border">
                        <td class="BatName">MS Dhoni</td>
                        <td class="BatName1">111</td>
                        <td class="BatName1">101</td>
                        <td class="BatName1">9</td>
                        <td class="BatName1">5</td>
                        <td class="BatName1">105</td>
                    </tr>
                    <tr class="story">
                        <td colspan="6">c Liam Livingstone b Adil Rashid</td>
                    </tr>
                </tbody>
            </table>
        </div>
            <%--Bolwing--%>
            <div class="BATscr">
        <table class="BRB46SR">
            <thead>
                <tr>
                    <th class="BatName">Bowling</th>
                    <th class="BatName1">O</th>
                    <th class="BatName1">M</th>
                    <th class="BatName1">R</th>
                    <th class="BatName1">W</th>
                    <th class="BatName1">Econ</th>
                </tr>
            </thead>
        </table>
        <table>
            <tbody>
                <tr>
                    <td class="BatName">Adil Rashid</td>
                    <td class="BatName1">3.5</td>
                    <td class="BatName1">1</td>
                    <td class="BatName1">13</td>
                    <td class="BatName1">1</td>
                    <td class="BatName1">88.33</td>
                </tr>              
            </tbody>
            <tbody>
                <tr>
                    <td class="BatName">Liam Livingstone</td>
                    <td class="BatName1">4</td>
                    <td class="BatName1">0</td>
                    <td class="BatName1">33</td>
                    <td class="BatName1">1</td>
                    <td class="BatName1">100.33</td>
                </tr>              
            </tbody>
        </table>
            </div>
        </div>

       <%-- <div id="Part2">
        <div class="BATscr">
            <table class="BRB46SR">
                <thead>
                    <tr>
                        <th class="BatName">Batting</th>
                        <th class="BatName1">R</th>
                        <th class="BatName1">B</th>
                        <th class="BatName1">4s</th>
                        <th class="BatName1">6s</th>
                        <th class="BatName1">S/R</th>
                    </tr>
                </thead>
            </table>
            <table>
                <tbody>
                    <tr class="Border">
                        <td class="BatName">Jos Buttlar</td>
                        <td class="BatName1">88</td>
                        <td class="BatName1">51</td>
                        <td class="BatName1">7</td>
                        <td class="BatName1">3</td>
                        <td class="BatName1">159</td>
                    </tr>
                    <tr class="story">
                        <td colspan="6">c Siraj b Kuldeep</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr class="Border">
                        <td class="BatName">Jo Root</td>
                        <td class="BatName1">51</td>
                        <td class="BatName1">48</td>
                        <td class="BatName1">3</td>
                        <td class="BatName1">1</td>
                        <td class="BatName1">101</td>
                    </tr>
                    <tr class="story">
                        <td colspan="6">c Kuldeep b Siraj</td>
                    </tr>
                </tbody>
            </table>
        </div>
            
            <div class="BATscr">
        <table class="BRB46SR">
            <thead>
                <tr>
                    <th class="BatName">Bowling</th>
                    <th class="BatName1">O</th>
                    <th class="BatName1">M</th>
                    <th class="BatName1">R</th>
                    <th class="BatName1">W</th>
                    <th class="BatName1">Econ</th>
                </tr>
            </thead>
        </table>
        <table>
            <tbody>
                <tr>
                    <td class="BatName">Siraj</td>
                    <td class="BatName1">3.5</td>
                    <td class="BatName1">1</td>
                    <td class="BatName1">13</td>
                    <td class="BatName1">1</td>
                    <td class="BatName1">88.33</td>
                </tr>              
            </tbody>
            <tbody>
                <tr>
                    <td class="BatName">Kuldeep</td>
                    <td class="BatName1">4</td>
                    <td class="BatName1">0</td>
                    <td class="BatName1">33</td>
                    <td class="BatName1">1</td>
                    <td class="BatName1">100.33</td>
                </tr>              
            </tbody>
        </table>
            </div>

        </div>--%>

        </div>
        </section>

        <section class="ScoreBook" id="ScoreBook">
            <h1>Hellow</h1>
        </section>
        </center>

    </form>
</body>
    <script>
        function changeContent() {
            var contentDiv = document.getElementById("Part1");
    
    
            var newContent = document.createElement("div");
            newContent.innerHTML = `
              <div id="Part2">
                <div class="BATscr">
                    <table class="BRB46SR">
                        <thead>
                            <tr>
                                <th class="BatName">Batting</th>
                                <th class="BatName1">R</th>
                                <th class="BatName1">B</th>
                                <th class="BatName1">4s</th>
                                <th class="BatName1">6s</th>
                                <th class="BatName1">S/R</th>
                            </tr>
                        </thead>
                    </table>
                    <table>
                        <tbody>
                            <tr class="Border">
                                <td class="BatName">Jos Buttlar</td>
                                <td class="BatName1">88</td>
                                <td class="BatName1">51</td>
                                <td class="BatName1">7</td>
                                <td class="BatName1">3</td>
                                <td class="BatName1">159</td>
                            </tr>
                            <tr class="story">
                                <td colspan="6">c Siraj b Kuldeep</td>
                            </tr>
                        </tbody>
                        <tbody>
                            <tr class="Border">
                                <td class="BatName">Jo Root</td>
                                <td class="BatName1">51</td>
                                <td class="BatName1">48</td>
                                <td class="BatName1">3</td>
                                <td class="BatName1">1</td>
                                <td class="BatName1">101</td>
                            </tr>
                            <tr class="story">
                                <td colspan="6">c Kuldeep b Siraj</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                    <%--Bolwing--%>
                    <div class="BATscr">
                <table class="BRB46SR">
                    <thead>
                        <tr>
                            <th class="BatName">Bowling</th>
                            <th class="BatName1">O</th>
                            <th class="BatName1">M</th>
                            <th class="BatName1">R</th>
                            <th class="BatName1">W</th>
                            <th class="BatName1">Econ</th>
                        </tr>
                    </thead>
                </table>
                <table>
                    <tbody>
                        <tr>
                            <td class="BatName">Siraj</td>
                            <td class="BatName1">3.5</td>
                            <td class="BatName1">1</td>
                            <td class="BatName1">13</td>
                            <td class="BatName1">1</td>
                            <td class="BatName1">88.33</td>
                        </tr>              
                    </tbody>
                    <tbody>
                        <tr>
                            <td class="BatName">Kuldeep</td>
                            <td class="BatName1">4</td>
                            <td class="BatName1">0</td>
                            <td class="BatName1">33</td>
                            <td class="BatName1">1</td>
                            <td class="BatName1">100.33</td>
                        </tr>              
                    </tbody>
                </table>
                    </div>
            `;
            
            // Replace the existing content with the new content
            contentDiv.innerHTML = "";
            contentDiv.appendChild(newContent);
        }

        function changeContent1() {
            var contentDiv = document.getElementById("Part2");
    
    
            var newContent = document.createElement("div");
            newContent.innerHTML = `
                <div id="Part1">
        <div class="BATscr">
            <table class="BRB46SR">
                <thead>
                    <tr>
                        <th class="BatName">Batting</th>
                        <th class="BatName1">R</th>
                        <th class="BatName1">B</th>
                        <th class="BatName1">4s</th>
                        <th class="BatName1">6s</th>
                        <th class="BatName1">S/R</th>
                    </tr>
                </thead>
            </table>
            <table>
                <tbody>
                    <tr class="Border">
                        <td class="BatName">Rohit Sharma</td>
                        <td class="BatName1">98</td>
                        <td class="BatName1">91</td>
                        <td class="BatName1">7</td>
                        <td class="BatName1">3</td>
                        <td class="BatName1">102</td>
                    </tr>
                    <tr class="story">
                        <td colspan="6">c Adil Rashid b Liam Livingstone</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr class="Border">
                        <td class="BatName">MS Dhoni</td>
                        <td class="BatName1">111</td>
                        <td class="BatName1">101</td>
                        <td class="BatName1">9</td>
                        <td class="BatName1">5</td>
                        <td class="BatName1">105</td>
                    </tr>
                    <tr class="story">
                        <td colspan="6">c Liam Livingstone b Adil Rashid</td>
                    </tr>
                </tbody>
            </table>
        </div>
            <%--Bolwing--%>
            <div class="BATscr">
        <table class="BRB46SR">
            <thead>
                <tr>
                    <th class="BatName">Bowling</th>
                    <th class="BatName1">O</th>
                    <th class="BatName1">M</th>
                    <th class="BatName1">R</th>
                    <th class="BatName1">W</th>
                    <th class="BatName1">Econ</th>
                </tr>
            </thead>
        </table>
        <table>
            <tbody>
                <tr>
                    <td class="BatName">Adil Rashid</td>
                    <td class="BatName1">3.5</td>
                    <td class="BatName1">1</td>
                    <td class="BatName1">13</td>
                    <td class="BatName1">1</td>
                    <td class="BatName1">88.33</td>
                </tr>              
            </tbody>
            <tbody>
                <tr>
                    <td class="BatName">Liam Livingstone</td>
                    <td class="BatName1">4</td>
                    <td class="BatName1">0</td>
                    <td class="BatName1">33</td>
                    <td class="BatName1">1</td>
                    <td class="BatName1">100.33</td>
                </tr>              
            </tbody>
        </table>
            </div>
        </div>
            `;
            
            // Replace the existing content with the new content
            contentDiv.innerHTML = "";
            contentDiv.appendChild(newContent);
        }

    </script>
</html>
