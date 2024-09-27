<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SBook2.aspx.cs" Inherits="GPL.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" />
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
            width: 750px;
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
       
        .auto-style1 {
            padding: 1px 4px;
            width: 750px;
            text-align: center;
        }
        .container{
            display:block;
            justify-content: center;
            background-color: #FDFFB6;
            Height:inherit;
            /*align-items:center;*/ 
            padding:20px 20px;
        }
        .TossHead{
            text-align: center;
            height: 12vh;
            width: 94.4vw; 
            background-color: #FFADAD;
            border:2px solid black;
            padding:10px 10px;
        }
        .Subcontainer{
            display: flex;
            flex-direction:row;
            flex-wrap: wrap;
            /*justify-content: center;*/
            background-color: #CAFFBF;
            Height:inherit;
            /*align-items:center;*/ 
            padding:20px 20px;
        }
        .Player11{
            text-align: center;
            height: 20vh;
            width: 45.86vw; 
            background-color: #FFD6A5;
            border:2px solid black;
            padding:10px 10px;
        }
        .SCRblw{
            text-align:inherit;
            height:30px;
            width:30px;
            background-color:slategray;
            color:white;
            border-radius: 5rem;
            margin:1px 3px;
            padding:5px;
        }
        .BtnScrW{
            height:50px;
            width:70px;
            background-color:black;
            color:white;
            border-radius: 5rem;
            margin:1px 3px;
        }
        .BtnScrW:hover{
            background-color:white;
            color:black;
            transition: background 0.5s;
        }
        
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div class="SCR_Head">
        <div>
        <table class="auto-style1">
            <tr>
                <td> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                <td>210/2<br />(20)</td>
                <td>199/4<br />(19.3)</td>
                <td> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
            </tr>
            <tr>
                <table class="Navbar">
                    <tr>
                    <td><a href="#Scorecard" class="Scorecard-active" onclick="SchangeContent1(1)">ScoreCard</a></td>
                    <td><a href="#ScoreBook" class="ScoreBook-active" onclick="SchangeContent1(2)">ScoreBook</a></td>
                    <%--<td><a href="#TABLE" class="TABLE-active" onclick="SchangeContent1(3)">TABLE</a></td>   
                    <td><a href="#STATS" class="STATS-active" onclick="SchangeContent1(4)">STATS</a></td> --%>
                    </tr>
                </table>
            </tr>
        </table>
        </div>
        </div>

        <section id="Scrcrd" style="display:none">
        <div class="Top_Space">
        <div>
        <table class="Team">
            <tr>
                <td><a href="#Team1" class="Team1-active" onclick="changeContent2(1)">Team1</a></td>
                <td><a href="#Team2" class="Team2-active" onclick="changeContent2(2)">Team2</a></td>
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

        <div id="Part2" style="display:none">
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

        </div>

        </div>
        </section>

        <section id="ScrBk"> 
            <div class="Top_Space">
                <div class="container">

          <%--  <table class="TossHead">
                <thead>
                    <tr>
                        <td>Team1</td>
                        <td><asp:DropDownList ID="DropDownList6" runat="server"  onchange="Team1_Select" CssClass="auto-style1" Width="175px">
                        <asp:ListItem>Select</asp:ListItem>                                            
                        </asp:DropDownList></td>
                        <td><b>Vs</b></td>
                        <td>Team2</td>
                        <td><asp:DropDownList ID="DropDownList7" runat="server"  CssClass="auto-style1" Width="175px">
                        <asp:ListItem>Select</asp:ListItem>                                              
                        </asp:DropDownList></td>                        
                    </tr>
                </thead>
            </table>--%>
                    <table class="TossHead">
    <thead>
        <tr>
            <td>Team1</td>
            <td>
                <asp:DropDownList ID="DropDownList6" runat="server" OnSelectedIndexChanged="Team1_Select" CssClass="auto-style1" Width="175px" AutoPostBack="true">
                    <%--OnSelectedIndexChanged="Team1_Select"--%>
                    
                    <asp:ListItem>Select</asp:ListItem> 
                    <asp:ListItem>CSK</asp:ListItem>  
                    <asp:ListItem>KKR</asp:ListItem>
                    <asp:ListItem>RR</asp:ListItem>  
                    <asp:ListItem>SRH</asp:ListItem> 
                    <asp:ListItem>PBKS</asp:ListItem>  
                    <asp:ListItem>RCB</asp:ListItem> 
                    <asp:ListItem>GT</asp:ListItem>  
                    <asp:ListItem>DC</asp:ListItem> 
                    <asp:ListItem>MI</asp:ListItem>  
                    <asp:ListItem>LSG</asp:ListItem> 
                </asp:DropDownList>
            </td>
            <td><b>Vs</b></td>
            <td>Team2</td>
            <td>
                <asp:DropDownList ID="DropDownList7" runat="server" OnSelectedIndexChanged="Team2_Select" CssClass="auto-style1" Width="175px" AutoPostBack="true">
                    <asp:ListItem>Select</asp:ListItem>                                              
                </asp:DropDownList>
            </td>                        
        </tr>
    </thead>
</table>


            <table class="TossHead">
                <thead>
                    <tr>
                        <td>Who won the toss?</td>
                        <td><asp:DropDownList ID="DropDownList1" runat="server"  CssClass="auto-style1" Width="175px" >
                        <asp:ListItem>Select</asp:ListItem>
                        <%--<asp:ListItem>CSK</asp:ListItem>
                        <asp:ListItem>MI</asp:ListItem>      --%>                  
                        </asp:DropDownList></td>
                        <td>Winner of the toss selcted to?</td>
                        <td><asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="BatBowl" CssClass="auto-style1" Width="175px" AutoPostBack="true">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>BAT</asp:ListItem>
                        <asp:ListItem>BOWL</asp:ListItem>                        
                        </asp:DropDownList></td>                        
                    </tr>
                </thead>
            </table>
                    <div class="Subcontainer">
            <table class="Player11">
                <tbody>
                    <tr>
                        <td>Batsman Name</td>
                        <td><asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="Batsman1" CssClass="auto-style1" Width="175px" AutoPostBack="true">
                        <asp:ListItem>Select</asp:ListItem>                    
                        </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>Batsman Name</td>
                        <td><asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="Batsman2" CssClass="auto-style1" Width="175px" AutoPostBack="true">
                        <asp:ListItem>Select</asp:ListItem>                      
                        </asp:DropDownList></td>                        
                    </tr>
                    <tr>
                        <td>Bolwer Name</td>
                        <td><asp:DropDownList ID="DropDownList5" runat="server" OnSelectedIndexChanged="BolwerN" CssClass="auto-style1" Width="175px" AutoPostBack="true">
                        <asp:ListItem>Select</asp:ListItem>                                               
                        </asp:DropDownList></td>
                    </tr>
                </tbody>                
            </table>
            <table class="Player11">
                <tbody>
                    <tr>
                        <%--<td><i class='bx bx-spray-can'></i><b ID="BatName1" runat="server"></b></td> --%>
                        <td><i class='bx bx-spray-can'></i><asp:Label  ID="BatName1" runat="server" ></asp:Label></td>  
                        <td><i class='bx bx-spray-can'></i><asp:Label  ID="BatName2" runat="server" ></asp:Label></td>
                    </tr>
                    <tr>
                        <td>0(0)</td>
                        <td>0(0)</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td><i class='bx bxs-cricket-ball'></i><asp:Label  ID="Bolwor1" runat="server" ></asp:Label></td>                    
                        <td>0-0-0-0</td>
                    </tr>                    
                </tbody>
            </table>
                    </div>

                    <div class="container">
                        <i class='bx bxs-cricket-ball'>Bolwer</i><br />
                        <div class=Subcontainer>
                        <div class="SCRblw"><asp:Label  ID="Lv_sc" runat="server" ></asp:Label></div>
                        <div class="SCRblw"><asp:Label  ID="Lv_sc2" runat="server" ></asp:Label></div>
                        <div class="SCRblw">NB</div>
                        <div class="SCRblw">LB</div>
                        <div class="SCRblw">W</div>
                        <div class="SCRblw">0</div>
                        </div>   
                    </div>

                    <table class="Player11">
                        <tr>
                            <td><asp:Button class="BtnScrW" ID="ID_0" Text="0" runat="server" OnClick="Btn0" /></td>
                            <td class="BtnScrW" onclick="BoxMsgRCB(1)">1-10</td>

                            <%--Runs Scored by running--%>

                            <%--<td class="BtnScrW">3</td>
                            <td class="BtnScrW">4</td>
                            <td class="BtnScrW">5</td>
                            <td class="BtnScrW">6</td>   --%>                                                     
                        
                            <td class="BtnScrW">Four</td>
                            <td class="BtnScrW">Six</td>
                        </tr>
                        <tr>
                            <td class="BtnScrW" onclick="BoxMsgRCB(2)">WB</td>
                            <td class="BtnScrW" onclick="BoxMsgRCB(3)">NB</td>
                            <td class="BtnScrW" onclick="BoxMsgRCB(4)">BYE</td>
                            <td class="BtnScrW" onclick="BoxMsgRCB(5)">LB</td>
                        </tr>
                        <tr>
                            <td colspan="2" class="BtnScrW" style="background-color:red" onclick="BoxMsgRCB(6)">OUT</td>
                            <td colspan="2" class="BtnScrW" style="background-color:blue">UNDO</td>
                        </tr>
                    </table>

                <div id="RunpopAll">
                   
                    <div id="RunpopWB" class="TossHead" style="display:none">
                        WB +
                        <table>
                        <tr>                            
                            <td class="BtnScrW" onclick="INBoxMsgRCB(1)">1-10</td>                                                    
                            <td  class="BtnScrW" style="background-color:red" onclick="INBoxMsgRCB(2)">OUT</td>
                        </tr>
                        </table>
                    </div>

                    <div id="RunpopNB" class="TossHead" style="display:none">
                        NB +
                        <table>
                        <tr>                            
                            <td class="BtnScrW" onclick="INBoxMsgRCB(1)">1-10</td>
                            <td class="BtnScrW">Four</td>
                            <td class="BtnScrW">Six</td>
                            <td  class="BtnScrW" style="background-color:red" onclick="INBoxMsgRCB(2)">OUT</td>
                        </tr>
                        </table>
                    </div>
                    <div id="RunpopBYE" class="TossHead" style="display:none">
                        BYE
                        <table>
                        <tr>                            
                            <td class="BtnScrW" onclick="INBoxMsgRCB(1)">1-10</td>
                            <td class="BtnScrW">Four</td>
                            <td class="BtnScrW">Six</td>
                            <td  class="BtnScrW" style="background-color:red" onclick="INBoxMsgRCB(2)">OUT</td>
                        </tr>
                        </table>

                    </div>
                    <div id="RunpopLB" class="TossHead" style="display:none">
                        LB
                        <table>
                        <tr>                            
                            <td class="BtnScrW" onclick="INBoxMsgRCB(1)">1-10</td>
                            <td class="BtnScrW">Four</td>
                            <td class="BtnScrW">Six</td>
                            <td  class="BtnScrW" style="background-color:red" onclick="INBoxMsgRCB(2)">OUT</td>
                        </tr>
                        </table>
                    </div>

                     <div id="Runpop1to10" class="TossHead" style="display:none">
                        <table id="Runpop1to10_2" ><tr>
                        <td>Run</td>
                        <td><asp:DropDownList ID="DropDownList8" runat="server" OnSelectedIndexChanged="Drp1to10" CssClass="auto-style1" Width="175px">
                        <asp:ListItem ID="DropDownList81">Select</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>  
                        <asp:ListItem>8</asp:ListItem>  
                        <asp:ListItem>9</asp:ListItem>  
                        <asp:ListItem>10</asp:ListItem>  
                        </asp:DropDownList></td>
                        </tr></table>
                    </div>

                    <div id="RunpopOUT" class="TossHead" style="display:none; background-color:lightblue">
                        <table id="RunpopOUT_2"><tr>
                            <td class="BtnScrW" style="width:120px" >Bowled OUT</td>
                            <td class="BtnScrW" style="width:120px">Caught OUT</td>
                            <td class="BtnScrW" >LBW</td>
                            <td class="BtnScrW" style="width:120px">Run OUT</td>
                            <td class="BtnScrW" style="width:120px">Hit Wikket</td>
                        </tr></table>                        
                    </div>
                </div>

                </div>
            </div>
        </section>


        </center>

    </form>
</body>
    <script>
        function SchangeContent1(val) {
            debugger;
            if (val == "1") {
                document.getElementById("ScrBk").style.display = "block";
                document.getElementById("Scrcrd").style.display = "none";                
            }            
            else {
                document.getElementById("ScrBk").style.display = "none";
                document.getElementById("Scrcrd").style.display = "block";                
            }
        }

        function changeContent2(val) {
            debugger;
            if (val == "1") {
                document.getElementById("Part1").style.display = "block";
                document.getElementById("Part2").style.display = "none";
            }
            else {
                document.getElementById("Part1").style.display = "none";
                document.getElementById("Part2").style.display = "block";

            }
        }


        function BoxMsgRCB(val) {
            debugger;
            document.getElementById("Runpop1to10").style.display = "none";
            document.getElementById("RunpopWB").style.display = "none";
            document.getElementById("RunpopNB").style.display = "none";
            document.getElementById("RunpopBYE").style.display = "none";
            document.getElementById("RunpopLB").style.display = "none";
            document.getElementById("RunpopOUT").style.display = "none";

            switch (val) {
                case 1:
                    document.getElementById("Runpop1to10").style.display = "block";
                    break;
                case 2:
                    document.getElementById("RunpopWB").style.display = "block";
                    break;
                case 3:
                    document.getElementById("RunpopNB").style.display = "block";
                    break;
                case 4:
                    document.getElementById("RunpopBYE").style.display = "block";
                    break;
                case 5:
                    document.getElementById("RunpopLB").style.display = "block";
                    break;
                default:
                    document.getElementById("RunpopOUT").style.display = "block";
            }
        }

        function INBoxMsgRCB(val) {
            debugger;
            ////document.getElementById("Runpop1to10_2").style.display = "none";
            ////document.getElementById("RunpopOUT_2").style.display = "none";

            switch (val) {
                case 1:
                    document.getElementById("Runpop1to10").style.display = "block";
                    document.getElementById("Runpop1to10_2").style.display = "block";
                    break;
                default:
                    document.getElementById("RunpopOUT").style.display = "block";
                    document.getElementById("RunpopOUT_2").style.display = "block";
            }
        }

         
         
    
    
            //var newContent = document.createElement("div");
            //newContent.innerHTML = `Html code            `;                     
            //contentDiv.innerHTML = "";
            //contentDiv.appendChild(newContent);



    </script>
</html>
