<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Matches.aspx.cs" Inherits="GPL.Matches" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .Matches-active,.TABLE-active,.STATS-active,.RUN-active,.Wickets-active,.HigS-active,.Six-active,.Four-active,.Fild-active{
            text-align: center;
            border-radius:15px;
        }
        .Matches-active:hover,.TABLE-active:hover,.STATS-active:hover,.RUN-active:hover,.Wickets-active:hover,.HigS-active:hover,.Six-active:hover,
        .Four-active:hover,.Fild-active:hover
        {
            background-color:green;          
            border-radius: 5rem;
            color:white;
            transition: background 0.5s;
        }
        .MAT_Head{
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
        .MAT_Navbar{
            padding: 8px 4px;
            padding-bottom: 2px;
            width: 750px;
            text-align: center;
            border-radius:15px;
        }
        .MAT_Navbar:hover{
            background-color:yellow;          
            border-radius: 5rem;
            color:black;
            transition: background 0.5s;
        }
        .MAT_Top_Space{
            padding-top: 120px;
        }
        thead {
            display: table-header-group;
            vertical-align: middle;
            border-color: inherit;
        }
        .TMWL {
            border-bottom: 2px solid red ;
            text-align:left;                      
        }
        .F2TMWL{
            border-bottom: 1px solid green ;
            text-align:left;  
        }
        .Team_name{
            padding: 8px 4px;
            padding-bottom: 2px;
            width: 250px;
            text-align: center;
        }
        .Team_name1
        {
            padding: 8px 4px;
            padding-bottom: 2px;
            width: 24px;
            text-align: center;
        }
        .container{
            display: flex;
            flex-direction:row;
            flex-wrap: wrap;
            justify-content: center;
            background-color: #FDFFB6;
            Height:inherit;
            /*align-items:center;*/ 
            padding:20px 20px;

        }
        .box1{
            height: 50px;
             width: 100%; 
            background-color: #FFADAD;
            border:2px solid black;
            /*order:1;*/
            /* align-self: flex-end; */
            flex-grow: 1;
        }
        .box2{
            display: flex;
            flex-wrap: wrap;
            flex-direction:row;  
            align-content:flex-start;
            height: inherit;
            width: 450px;
            background-color: #FFD6A5;
            border:2px solid black;
            flex-grow: 50;
        }
        .MatBox1{
            height: 120px;
            width: 322.5px;
            background-color: #CAFFBF;
            border:2px solid black;
            text-align:left;
        }
        .auto-style1 {
            padding: 0px 22px;
            /*width: 750px;*/
            text-align: center;
        }
        .auto-style14 {
            text-align: center;
            border-radius:15px;
        }
        .auto-style14:hover{
            background-color:green;
        }

    </style>
    <script type="text/javascript">
        //function Adddiv(KPI_CODE, Name, ID, flag) {
        //function Adddiv(dRT1, dRT2, flag) {
        function Adddiv(flag) {
            debugger;
            //var div38 = document.getElementById("Div38");
			if (document.getElementById("Div38").style.display == 'none') {
				document.getElementById("Div38").style.display = 'block';
			}
			if (flag == "S") {
				//divisvisible('');
                var html;
                html = "<div class='MatBox1'>T6 1 of 30";   
                html += "<table class=auto-style1>"
                html += "<tr><td rowspan='2'> <img src='IMAGE/India.jpg' height='55' width='55' /></td>"
                               
                html +="<td rowspan='2'> <img src='IMAGE/India.jpg' height='55' width='55' /></td></tr > "
                html += "</table>"
                html += "</div>"

                
                                            

				//html = "<div Id='div" + ID + "' class='divspecial'>" + Name;
				////html += "<asp:LinkButton ID='lnk" + ID +  "OnClick='deletediv("+ ID +");'>";
				//html += "<a onclick='deletediv(" + ID + "," + KPI_CODE + ")'; id='lnk" + ID + "'>";
				//html += "<span class='glyphicon glyphicon-remove' style='color:black'></span>";
				////html += "</asp:LinkButton>";
				//html += "</a>";
				//html += "</div3>";

				//html = "<div Id='div" + ID + "' class='divspecial'>" + Name;
				////html += "<asp:LinkButton ID='lnk" + ID +  "OnClick='deletediv("+ ID +");'>";
				//html += "<a onclick='deletediv(" + ID + "," + KPI_CODE + ")'; id='lnk" + ID + "'>";
				//html += "<span class='glyphicon glyphicon-remove' style='color:black'></span>";
				////html += "</asp:LinkButton>";
				//html += "</a>";
				//html += "</div>";
				//document.getElementById("ctl00_ContentPlaceHolder1_Div38").innerHTML += "<div Id='div"+ID+"' class='divspecial'>" + Name + "</div>";

                document.getElementById("Div38").innerHTML += html;



			}
			//else {
			//	var myArray = JSON.parse(Name);
			//	for (var i = 0; i < myArray.length; i++) {
			//		var obj = myArray[i];
			//		//console.log("Name: " + obj.name + ", Age: " + obj.age);
			//		var html;
			//		html = "<div Id='div" + obj.OBJ_ID + "' class='divspecial'>" + obj.TBL_NAME;
			//		//html += "<asp:LinkButton ID='lnk" + ID +  "OnClick='deletediv("+ ID +");'>";
			//		if (obj.Flag == "0") {
			//			html += "<a onclick='deletediv(" + obj.OBJ_ID + "," + KPI_CODE + ")'; id='lnk" + ID + "'>";
			//			html += "<span class='glyphicon glyphicon-remove' style='color:black'></span>";
			//			//html += "</asp:LinkButton>";
			//			html += "</a>";
			//		}
			//		html += "</div>";
			//		//document.getElementById("ctl00_ContentPlaceHolder1_Div38").innerHTML += "<div Id='div"+ID+"' class='divspecial'>" + Name + "</div>";

			//		document.getElementById("ctl00_ContentPlaceHolder1_Div38").innerHTML += html;
			//	}
			//	//document.getElementById("ctl00_ContentPlaceHolder1_Div38").innerHTML += myArray;
			//}
		}



        function SchangeContent1(val) {
            debugger;
            if (val == "1") {
                document.getElementById("MAT").style.display = "block";                
                document.getElementById("TBL").style.display = "none";
                document.getElementById("STS").style.display = "none";
            }
            else if (val == "2") {
                document.getElementById("MAT").style.display = "none";                
                document.getElementById("TBL").style.display = "block";
                document.getElementById("STS").style.display = "none";
            }
            
            else {
                document.getElementById("MAT").style.display = "none";                
                document.getElementById("TBL").style.display = "none";
                document.getElementById("STS").style.display = "block";
            }
        }

        function cngCnt(val) {
            debugger;
            if (val == "1") {
                document.getElementById("Run1").style.display = "block";
                document.getElementById("Wckt1").style.display = "none";
                document.getElementById("HigSc").style.display = "none";
                document.getElementById("Six").style.display = "none";
                document.getElementById("Four").style.display = "none";
                document.getElementById("Fild").style.display = "none";
            }
            else if (val == "2") {
                document.getElementById("Run1").style.display = "none";
                document.getElementById("Wckt1").style.display = "block";
                document.getElementById("HigSc").style.display = "none";
                document.getElementById("Six").style.display = "none";
                document.getElementById("Four").style.display = "none";
                document.getElementById("Fild").style.display = "none";
            }
            else if (val == "3") {
                document.getElementById("Run1").style.display = "none";
                document.getElementById("Wckt1").style.display = "none";
                document.getElementById("HigSc").style.display = "block";
                document.getElementById("Six").style.display = "none";
                document.getElementById("Four").style.display = "none";
                document.getElementById("Fild").style.display = "none";
            }
            else if (val == "4") {
                document.getElementById("Run1").style.display = "none";
                document.getElementById("Wckt1").style.display = "none";
                document.getElementById("HigSc").style.display = "none";
                document.getElementById("Six").style.display = "block";
                document.getElementById("Four").style.display = "none";
                document.getElementById("Fild").style.display = "none";
            }
            else if (val == "5") {
                document.getElementById("Run1").style.display = "none";
                document.getElementById("Wckt1").style.display = "none";
                document.getElementById("HigSc").style.display = "none";
                document.getElementById("Six").style.display = "none";
                document.getElementById("Four").style.display = "block";
                document.getElementById("Fild").style.display = "none";
            }
            else {
                document.getElementById("Run1").style.display = "none";
                document.getElementById("Wckt1").style.display = "none";
                document.getElementById("HigSc").style.display = "none";
                document.getElementById("Six").style.display = "none";
                document.getElementById("Four").style.display = "none";
                document.getElementById("Fild").style.display = "block";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
            <div class="MAT_Head">
            <table class="MAT_Navbar">
                    <tr>
                    <td><a href="#Matches" class="Matches-active" onclick="SchangeContent1(1)">MATCHES</a></td>
                    <td><a href="#TABLE" class="TABLE-active" onclick="SchangeContent1(2)">TABLE</a></td>   
                    <td><a href="#STATS" class="STATS-active" onclick="SchangeContent1(3)">STATS</a></td> 
                    </tr>
            </table>
            </div>

        <section id="MAT"> 
            <div class="MAT_Top_Space">

                <div class="container">                    
                <div class="box1">
                    <table>
                        <tr>
                        <td><a href="#MatHis" class="MatHis-active" onclick="Slider(2)">Match history</a></td>
                        <td><asp:Button class="auto-style14" ID="NewMat" runat="server" OnClick="NewM_Click" Text="New match"/></td>
                        </tr>
                    </table>
                </div>

                <div id="HistMat" class="box2">
                    <div id="Div38" runat="server" style="display:none"></div>

                    <div class="MatBox1">
                    T6 1 of 30
                  <table class="auto-style1">
                        <tr>
                            <td rowspan="2"> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                            <%--<td>Test</td>
                            <td>Test</td>--%>
                            <td id="dataRunT1" runat="server" ></td>
                            <td id="dataRunT2" runat="server" ></td>
                            
                            <td rowspan="2"> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                        </tr>
                        <tr>
                            <td id="dataOverT1" runat="server" ></td>
                            <td id="dataOverT2" runat="server" ></td>
                        </tr>
                        <tr>
                            <td id="dataRun_team1" runat="server"></td>
                            <td id="DataWinStatement" runat="server" colspan="2"></td>
                            <td id="dataRun_team2" runat="server"></td>
                        </tr>
                  </table>
                    </div>


                    <div class="MatBox1">
                    T6 2 of 30
                  <table class="auto-style1">
                        <tr>
                            <td rowspan="2"> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                            <td>119/10</td>                            
                            <td>120/3</td>
                            <td rowspan="2"> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                        </tr>
                        <tr>
                            <td>(19.3)</td>
                            <td>(14.5)</td>
                        </tr>
                        <tr>                            
                            <td>RCB</td>
                            <td colspan="2">SRH win by 7 wiket</td>
                            <td>SRH</td>                            
                        </tr>
                  </table>
                    </div>

                    <div class="MatBox1">
                    T6 3 of 30
                  <table class="auto-style1">
                        <tr>
                            <td rowspan="2"> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                            <td>119/10</td>                            
                            <td>120/3</td>
                            <td rowspan="2"> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                        </tr>
                        <tr>
                            <td>(19.3)</td>
                            <td>(14.5)</td>
                        </tr>
                        <tr>                            
                            <td>RCB</td>
                            <td colspan="2">SRH win by 7 wiket</td>
                            <td>SRH</td>                            
                        </tr>
                  </table>
                    </div>

                    <div class="MatBox1">
                    T6 4 of 30
                  <table class="auto-style1">
                        <tr>
                            <td rowspan="2"> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                            <td>119/10</td>                            
                            <td>120/3</td>
                            <td rowspan="2"> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                        </tr>
                        <tr>
                            <td>(19.3)</td>
                            <td>(14.5)</td>
                        </tr>
                        <tr>                            
                            <td>RCB</td>
                            <td colspan="2">SRH win by 7 wiket</td>
                            <td>SRH</td>                            
                        </tr>
                  </table>
                    </div>

                    <div class="MatBox1">
                    T6 5 of 30
                 <table class="auto-style1">
                        <tr>
                            <td rowspan="2"> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                            <td>119/10</td>                            
                            <td>120/3</td>
                            <td rowspan="2"> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                        </tr>
                        <tr>
                            <td>(19.3)</td>
                            <td>(14.5)</td>
                        </tr>
                        <tr>                            
                            <td>RCB</td>
                            <td colspan="2">SRH win by 7 wiket</td>
                            <td>SRH</td>                            
                        </tr>
                  </table>
                    </div>

                    <div class="MatBox1">
                    T6 6 of 30
                  <table class="auto-style1">
                        <tr>
                            <td rowspan="2"> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                            <td>119/10</td>                            
                            <td>120/3</td>
                            <td rowspan="2"> <img src="IMAGE/India.jpg" height="55" width="55" /></td>
                        </tr>
                        <tr>
                            <td>(19.3)</td>
                            <td>(14.5)</td>
                        </tr>
                        <tr>                            
                            <td>RCB</td>
                            <td colspan="2">SRH win by 7 wiket</td>
                            <td>SRH</td>                            
                        </tr>
                  </table>
                    </div>

                </div>
                    
                </div>
                
                                                
            </div>
        </section>

        <section id="TBL" style="display:none"> 
            
            <div class="MAT_Top_Space">

            <asp:GridView ID="GridView1" runat="server" CssClass="TMWL" PageSize="10" AllowSorting="True"
              AllowPaging="true" AutoGenerateColumns="false" ForeColor="#333333" EmptyDataText="No Standard definition type Defined">
             <RowStyle CssClass="F2TMWL"></RowStyle>
             <PagerStyle CssClass="disablepage" />
             <HeaderStyle CssClass="Team_name1" />
             <Columns>
                 <asp:TemplateField HeaderText="NO" HeaderStyle-HorizontalAlign="Left"
                     SortExpression="ACT_TYP_DSC">
                     <ItemTemplate>
                         <asp:Label ID="lblstddeftyp" runat="server" Text='<%# Bind("ID")%>'></asp:Label>
                         <asp:HiddenField ID="hdnstddeftyp" runat="server" Value='<%# Bind("ID")%>'>
                         </asp:HiddenField>
                         <asp:HiddenField ID="hdnkpicodestddef" runat="server" Value='<%# Bind("ID")%>'>
                         </asp:HiddenField>
                     </ItemTemplate>
                     <ItemStyle Width="20%" HorizontalAlign="Left" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Team" HeaderStyle-HorizontalAlign="Left" SortExpression="BSD_ON_TBL_TYP">
                     <ItemTemplate>
                         <asp:Label ID="lblbsdtbltyp" runat="server" Text='<%# Bind("Team_NAME")%>'></asp:Label>
                         <asp:HiddenField ID="hdnbsdtbltyp" runat="server" Value='<%# Bind("Team_NAME")%>' />
                           <asp:Label ID="lblhdnbsdontbltype" runat="server" Text='<%# Bind("Team_NAME")%>' Visible="false"></asp:Label>
                     </ItemTemplate>
                     <ItemStyle Width="20%" HorizontalAlign="Left" />
                     <HeaderStyle HorizontalAlign="left" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="M" HeaderStyle-HorizontalAlign="Left" SortExpression="BSD_ON_TBL_TYP">
                     <ItemTemplate>
                         <asp:Label ID="lblbsdtbltyp1" runat="server" Text='<%# Bind("Match")%>'></asp:Label>
                         <asp:HiddenField ID="hdnbsdtbltyp1" runat="server" Value='<%# Bind("Match")%>' />
                           <asp:Label ID="lblhdnbsdontbltype1" runat="server" Text='<%# Bind("Match")%>' Visible="false"></asp:Label>
                     </ItemTemplate>
                     <ItemStyle Width="20%" HorizontalAlign="Left" />
                     <HeaderStyle HorizontalAlign="left" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="W" HeaderStyle-HorizontalAlign="Left" SortExpression="BSD_ON_TBL_TYP">
                     <ItemTemplate>
                         <asp:Label ID="lblbsdtbltyp2" runat="server" Text='<%# Bind("Win")%>'></asp:Label>
                         <asp:HiddenField ID="hdnbsdtbltyp2" runat="server" Value='<%# Bind("Win")%>' />
                           <asp:Label ID="lblhdnbsdontbltype2" runat="server" Text='<%# Bind("Win")%>' Visible="false"></asp:Label>
                     </ItemTemplate>
                     <ItemStyle Width="20%" HorizontalAlign="Left" />
                     <HeaderStyle HorizontalAlign="left" />
                 </asp:TemplateField>
                <asp:TemplateField HeaderText="L" HeaderStyle-HorizontalAlign="Left" SortExpression="BSD_ON_TBL_TYP">
                     <ItemTemplate>
                         <asp:Label ID="lblbsdtbltyp3" runat="server" Text='<%# Bind("Loss")%>'></asp:Label>
                         <asp:HiddenField ID="hdnbsdtbltyp3" runat="server" Value='<%# Bind("Loss")%>' />
                           <asp:Label ID="lblhdnbsdontbltype3" runat="server" Text='<%# Bind("Loss")%>' Visible="false"></asp:Label>
                     </ItemTemplate>
                     <ItemStyle Width="20%" HorizontalAlign="Left" />
                     <HeaderStyle HorizontalAlign="left" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="NRR" HeaderStyle-HorizontalAlign="Left" SortExpression="BSD_ON_TBL_TYP">
                     <ItemTemplate>
                         <asp:Label ID="lblbsdtbltyp4" runat="server" Text='<%# Bind("NRR")%>'></asp:Label>
                         <asp:HiddenField ID="hdnbsdtbltyp4" runat="server" Value='<%# Bind("NRR")%>' />
                           <asp:Label ID="lblhdnbsdontbltype4" runat="server" Text='<%# Bind("NRR")%>' Visible="false"></asp:Label>
                     </ItemTemplate>
                     <ItemStyle Width="20%" HorizontalAlign="Left" />
                     <HeaderStyle HorizontalAlign="left" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="PTC" HeaderStyle-HorizontalAlign="Left" SortExpression="BSD_ON_TBL_TYP">
                     <ItemTemplate>
                         <asp:Label ID="lblbsdtbltyp5" runat="server" Text='<%# Bind("PTC")%>'></asp:Label>
                         <asp:HiddenField ID="hdnbsdtbltyp5" runat="server" Value='<%# Bind("PTC")%>' />
                           <asp:Label ID="lblhdnbsdontbltype5" runat="server" Text='<%# Bind("PTC")%>' Visible="false"></asp:Label>
                     </ItemTemplate>
                     <ItemStyle Width="20%" HorizontalAlign="Left" />
                     <HeaderStyle HorizontalAlign="left" />
                 </asp:TemplateField>
                                  
                 </Columns>
                 </asp:GridView> 
                
        
            
            
            
          <%-- <table class="TMWL">
                <thead>
                    <tr>
                        <td class="Team_name1"></td>
                        <td class="Team_name">TEAM</td>
                        <td class="Team_name1">M</td>
                        <td class="Team_name1">W</td>
                        <td class="Team_name1">L</td>
                        <td class="Team_name1">NRR</td>
                        <td class="Team_name1">PTC</td>
                    </tr>
                </thead>
            </table>
            <table class="F2TMWL">
                <tbody>
                    <tr>
                        <td class="Team_name1">1</td>
                        <td class="Team_name">CSK</td>
                        <td class="Team_name1">5</td>
                        <td class="Team_name1">5</td>
                        <td class="Team_name1">0</td>
                        <td class="Team_name1">232.44</td>
                        <td class="Team_name1">10</td>
                    </tr>                    
                </tbody>
            </table>
            <table class="F2TMWL">
                <tbody>
                    <tr>
                        <td class="Team_name1">2</td>
                        <td class="Team_name">SRH</td>
                        <td class="Team_name1">5</td>
                        <td class="Team_name1">3</td>
                        <td class="Team_name1">2</td>
                        <td class="Team_name1">152.44</td>
                        <td class="Team_name1">6</td>
                    </tr>                    
                </tbody>
            </table>
            <table class="F2TMWL">
                <tbody>
                    <tr>
                        <td class="Team_name1">3</td>
                        <td class="Team_name">DC</td>
                        <td class="Team_name1">5</td>
                        <td class="Team_name1">2</td>
                        <td class="Team_name1">3</td>
                        <td class="Team_name1">132.44</td>
                        <td class="Team_name1">4</td>
                    </tr>                    
                </tbody>
            </table>
            <table class="F2TMWL">
                <tbody>
                    <tr>
                        <td class="Team_name1">4</td>
                        <td class="Team_name">MI</td>
                        <td class="Team_name1">5</td>
                        <td class="Team_name1">3</td>
                        <td class="Team_name1">2</td>
                        <td class="Team_name1">162.44</td>
                        <td class="Team_name1">6</td>
                    </tr>                    
                </tbody>
            </table>
            <table class="F2TMWL">
                <tbody>
                    <tr>
                        <td class="Team_name1">5</td>
                        <td class="Team_name">RCB</td>
                        <td class="Team_name1">5</td>
                        <td class="Team_name1">4</td>
                        <td class="Team_name1">1</td>
                        <td class="Team_name1">192.44</td>
                        <td class="Team_name1">8</td>
                    </tr>                    
                </tbody>
            </table>
            <table class="F2TMWL">
                <tbody>
                    <tr>
                        <td class="Team_name1">6</td>
                        <td class="Team_name">GG</td>
                        <td class="Team_name1">5</td>
                        <td class="Team_name1">0</td>
                        <td class="Team_name1">5</td>
                        <td class="Team_name1">-232.44</td>
                        <td class="Team_name1">0</td>
                    </tr>                    
                </tbody>
            </table>--%>

            </div>
        </section>

        <section id="STS" style="display:none"> 
            <div class="MAT_Top_Space">

            <table class="MAT_Navbar">
            <tr>
                <td><a href="#RUN" class="RUN-active" onclick="cngCnt(1)">RUN</a></td>
                <td><a href="#Wickets" class="Wickets-active" onclick="cngCnt(2)">Wickets</a></td>
                <td><a href="#Highest_Scr" class="HigS-active" onclick="cngCnt(3)">Partnership</a></td>
                <td><a href="#Sixes" class="Six-active" onclick="cngCnt(4)">Six</a></td>
                <td><a href="#Fours" class="Four-active" onclick="cngCnt(5)">Four</a></td>
                <td><a href="#Filds" class="Fild-active" onclick="cngCnt(6)">Fielder</a></td>
            </tr>
            </table>

                <div id="Run1">
            <table class="TMWL">
                <thead>
                    <tr>
                        <td class="Team_name1"></td>
                        <td class="Team_name">Player</td>
                        <td class="Team_name1">M</td>
                        <td class="Team_name1">AVG</td>
                        <td class="Team_name1">Runs</td>                        
                    </tr>
                </thead>
            </table>
            <table class="F2TMWL">
                <tbody>
                    <tr>
                        <td class="Team_name1">1</td>
                        <td class="Team_name">MS Dhoni<br />(CSK)</td>
                        <td class="Team_name1">5</td>                        
                        <td class="Team_name1">232.44</td>
                        <td class="Team_name1">454</td>
                    </tr>                    
                </tbody>
            </table>
                </div>

                <div id="Wckt1" style="display:none">
            <table class="TMWL">
                <thead>
                    <tr>
                        <td class="Team_name1"></td>
                        <td class="Team_name">Player</td>
                        <td class="Team_name1">M</td>
                        <td class="Team_name1">ECO</td>
                        <td class="Team_name1">W</td>                        
                    </tr>
                </thead>
            </table>
            <table class="F2TMWL">
                <tbody>
                    <tr>
                        <td class="Team_name1">1</td>
                        <td class="Team_name">M Siraj<br />(CSK)</td>
                        <td class="Team_name1">5</td>                        
                        <td class="Team_name1">5.44</td>
                        <td class="Team_name1">15</td>
                    </tr>                    
                </tbody>
            </table>
                </div>

                <div id="HigSc" style="display:none">
            <table class="TMWL">
                <thead>
                    <tr>
                        <td class="Team_name1"></td>
                        <td class="Team_name">Player</td>
                        <td class="Team_name">Player</td>
                        <td class="Team_name1">SR</td>
                        <td class="Team_name1">HS</td>                                              
                    </tr>
                </thead>
            </table>
            <table class="F2TMWL">
                <tbody>
                    <tr>
                        <td class="Team_name1">1</td>
                        <td class="Team_name">Sachin T<br />(MI)</td>
                        <td class="Team_name">Veriendra s<br />(MI)</td>
                        <td class="Team_name1">100.00</td>                        
                        <td class="Team_name1">131</td>                        
                    </tr>                    
                </tbody>
            </table>
                </div>

                <div id="Six" style="display:none">
            <table class="TMWL">
                <thead>
                    <tr>
                        <td class="Team_name1"></td>
                        <td class="Team_name">Player</td>
                        <td class="Team_name1">M</td>
                        <td class="Team_name1">Run</td>
                        <td class="Team_name1">6S</td>                        
                    </tr>
                </thead>
            </table>
            <table class="F2TMWL">
                <tbody>
                    <tr>
                        <td class="Team_name1">1</td>
                        <td class="Team_name">Y B Jaisval<br />(RCB)</td>
                        <td class="Team_name1">5</td>                        
                        <td class="Team_name1">245</td>
                        <td class="Team_name1">13</td>
                    </tr>                    
                </tbody>
            </table>
                </div>

                <div id="Four" style="display:none">
            <table class="TMWL">
                <thead>
                    <tr>
                        <td class="Team_name1"></td>
                        <td class="Team_name">Player</td>
                        <td class="Team_name1">M</td>
                        <td class="Team_name1">Run</td>
                        <td class="Team_name1">4S</td>                        
                    </tr>
                </thead>
            </table>
            <table class="F2TMWL">
                <tbody>
                    <tr>
                        <td class="Team_name1">1</td>
                        <td class="Team_name">Ruturaj G<br />(RCB)</td>
                        <td class="Team_name1">5</td>                        
                        <td class="Team_name1">265</td>
                        <td class="Team_name1">31</td>
                    </tr>                    
                </tbody>
            </table>
                </div>

                <div id="Fild" style="display:none">
            <table class="TMWL">
                <thead>
                    <tr>
                        <td class="Team_name1"></td>
                        <td class="Team_name">Player</td>
                        <td class="Team_name1">M</td>
                        <td class="Team_name1">Catch</td>
                        <td class="Team_name1">RO</td>                        
                    </tr>
                </thead>
            </table>
            <table class="F2TMWL">
                <tbody>
                    <tr>
                        <td class="Team_name1">1</td>
                        <td class="Team_name">Manish Pande<br />(DC)</td>
                        <td class="Team_name1">5</td>                        
                        <td class="Team_name1">13</td>
                        <td class="Team_name1">5</td>
                    </tr>                    
                </tbody>
            </table>
                </div>


            </div>
        </section>

        </div>
        </center>
    </form>
</body>
</html>
