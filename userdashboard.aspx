<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="userdashboard.aspx.cs" Inherits="userdashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="css/bootstrap.css" rel="stylesheet"/>
		<link href="css/style1.css" rel="stylesheet"/>

         
	<link rel="stylesheet" href="css/style1111/core.css" />


    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            text-align: right;
            background-color: #EEEEEE;
            font-weight: 700;
            height: 35px;
            width:200px
        }
        .style3
        {
            color: #333333;
        }
        .style8
    {
        height: 28px;
        width: 300px;
    }
        .style9
        {
            height: 35px;
            width: 300px;
        }
        .style10
        {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

                            
    <asp:Panel ID="Panel10"  runat="server" Visible="False">
       <div  class="message22">
            <asp:Label ID="msg22" runat="server"></asp:Label>
       </div>
    </asp:Panel>
    <asp:Panel ID="Panel2"  runat="server">  
        <section>
			<div class="row">      
                    <div class="col-md-6">
                            <div class="form-group"> 
								<h4><label >Seacrh inmate By Names and Age</label> </h4>
							</div> 
                    </div>
			</div>
        </section>


       <section id="contact">
			<div class="row">
                        
					<div class="col-md-4">
							<div class="form-group"> 
                                <asp:TextBox ID="txtSearch" runat="server" class="form-control" 
                                    placeholder="Enter names"></asp:TextBox>

							</div> 
					</div>
					<div class="col-md-8">
						    <div class="form-group"> 
								<asp:TextBox ID="txtAge" runat="server" class="form-control" 
                                    placeholder="Enter Age" Width="100px"></asp:TextBox>
							</div>
					</div>
                    
                <asp:Button ID="Button1" CssClass="btn1" runat="server" Text="Search" onclick="search_Click" />
            </div>
		</section>
        </asp:Panel>






<asp:Panel ID="Panel3" runat="server" Visible="False">	
        <section>
     
        <table class="table2" border="0">
        <tr>
            <td colspan="4">
                <div id="content-main-wrapper">
	                <div class="row-item" style="margin-top: 30px; margin-bottom: 30px;">
		                <div class="fll row-item-col left">
			                <div class="fll row-item-col left bordered-col" style="background: green; color:#fff;">
                                <span>Transaction Timestamp</span>
				                <h4 class="panel-title"><asp:Label ID="transTime" runat="server"></asp:Label></h4>
			                </div>
		                </div>
		                <div class="fll row-item-col">
			               
		    <asp:Image ID="Image9" runat="server" BorderStyle="Ridge" class="profile-img img-circle"/>
			                
		                </div>
	                </div>
                </div>


            </td>
        </tr>
        <tr>
            <td colspan="4" 
                style="font-size: medium; color: #333333; background-color: #F8F8F8;">
                <asp:Label ID="Label21" runat="server" Text="Transaction Timestamp" 
                    style="font-weight: 700; font-style: italic"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: right; background-color: #F7F7F7">
                
            </td>
        </tr>
        
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" CssClass="style3" Text="Names :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lblname" runat="server"></asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="Label12" runat="server" CssClass="style3" Text="Age :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lblage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label13" runat="server" CssClass="style3" Text="Gender :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lblgender" runat="server"></asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="Label14" runat="server" CssClass="style3" Text="Education :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbleducation" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label15" runat="server" CssClass="style3" Text="State :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lblstate" runat="server"></asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="Label16" runat="server" CssClass="style3" Text="Nationality :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblnation" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="background-color: #F7F7F7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label17" runat="server" CssClass="style3" Text="Marital Status :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lblmarital" runat="server"></asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="Label18" runat="server" CssClass="style3" Text="Offence :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbloffence" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label19" runat="server" CssClass="style3" 
                    Text="Date of Judgement :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lbljudge" runat="server"></asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="Label20" runat="server" CssClass="style3" Text="Date of Convict :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblconvict" runat="server"></asp:Label>
            </td>
        </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label22" runat="server" CssClass="style3"  Text="Prison Name :"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="lblprison" runat="server"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="Label25" runat="server" CssClass="style3"  Text="Sentence :"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblsentence" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label27" runat="server" CssClass="style3"  Text="File No :"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="lblfile" runat="server"></asp:Label>
                </td>
                <td class="style2">
                    
                </td>
                <td>
                    
                </td>
            </tr>
        </table>
		</section>
		
</asp:Panel>


</asp:Content>



