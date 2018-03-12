<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Style1.css" type="text/css" rel="Stylesheet" />

    
	
    <link rel="stylesheet" href="css/css1/bootstrap.min.css" />

	<link rel="stylesheet" href="css/css2/font-awesome.min.css" />
	<link rel="stylesheet" href="css/style1111/core.css" />
		
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="background-color: #F7F7F7; text-align: left; margin-left: 80px;" 
                class="style3">
                <asp:Label ID="Label2" runat="server" 
                    style="font-size: x-large; font-weight: 700; font-style: italic" 
                    Text="Statistic"></asp:Label>
            </td>
           
        </tr>
    </table>

    <div id="content-main-wrapper">
	<div class="row-item" style="margin-top: 30px; margin-bottom: 30px;">
		<div class="fll row-item-col left">
			<div class="fll row-item-col left bordered-col" style="background: #d53d40; color:#fff;">
				<h4 class="panel-title"><asp:Label ID="msg1" runat="server"></asp:Label></h4>
                <span> Female Inmates</span>
			</div>

			<div class="fll row-item-col bordered-col">
				<h4 class="panel-title"><asp:Label ID="msg4" runat="server"></asp:Label></h4>
				<span>Inmates under 16</span>
			</div>
			
		</div>
		<div class="fll row-item-col">
			<div class="fll row-item-col left bordered-col" style="background: #e8b110; color:#fff;">
				<h4 class="panel-title"><asp:Label ID="msg2" runat="server"></asp:Label></h4>
				<span> Male Inmates</span>
			</div>
			<div class="fll row-item-col bordered-col" style="background: green; color: #fff;">
				<h5 class="panel-title">
                     <asp:Label ID="msg" runat="server"></asp:Label>
                </h5>
				<span>Total Number Of Inmates</span>
			</div>
			
		</div>
	
	</div>
	
</div>
		



<div class="row-item">
		<div class="fll row-item-col left">
		
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title">Statistic</h1>
				</div>
				<div id="birthPlot" style="width: 100%; height: 230px;">
                    <asp:Chart ID="Chart1" runat ="server" Height ="300px" Width ="570px" >
                        <Titles>
                            <asp:Title ShadowOffset="3" Name ="Items" />
                        </Titles>
                        <Legends>
                            <asp:Legend Alignment ="Center" Docking ="Bottom" IsTextAutoFit ="False" Name ="Default" LegendStyle="Row" />
                        </Legends>
                        <Series>
                            <asp:Series Name ="Default" />
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name ="ChartArea1" BorderWidth ="0" />
                        </ChartAreas>
                    </asp:Chart>

                </div>
			</div>
			
		</div>
		<div class="fll row-item-col">
		
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title">Details</h1>
				</div>
				<div id="deathPlot" style="width: 100%; height: 230px;">
                    

                   
                </div>
			</div>
			
			
		</div>
		<div class="clear"></div>
	</div>

    <br />
   
</asp:Content>


