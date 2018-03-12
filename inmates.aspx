<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.master" AutoEventWireup="true" CodeFile="inmates.aspx.cs" Inherits="inmates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript" src="Script/JScript.js"></script>
    <script type="text/javascript" src="Script/ssASPSnippets_Pager.min.js"></script>
     <script type="text/javascript" src="Script/ssJScriptSearch.js"></script>
     
    <link href="Css/Style1.css" type="text/css" rel="Stylesheet" />
    <link href="Css/ccStylepager.css" type="text/css" rel="Stylesheet" />



    <script type="text/javascript">

        function DeleteConfirm() {
            var Ans = confirm("Do you want to Delete Selected Employee Record?");
            if (Ans) {
                return true;
            }
            else {
                return false;
            }
        }  
</script>  
    <style type="text/css">
        
        
        .style2
        {
            height: 38px;
        }
        
        .style3
        {
            height: 40px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   
     <asp:Panel ID="Panel3" runat="server" CssClass="exitmsg" Visible="False">
        <table class="style101">
            <tr>
                <td>
                    <asp:Label ID="dataTime" runat="server" Text=""></asp:Label>
                    <asp:Label ID="msg2" runat="server"  
                        style="color: #A94D64; font-size: medium; " ></asp:Label>
                </td>
            </tr>
            <tr> 
                <td>
                    <asp:Button ID="Button5" runat="server" CssClass="btn2" Text="Back" onclick="msgback_Click" 
                         />
                 </td>
            </tr>
        </table>
    </asp:Panel>


    <asp:Panel ID="Panel2" runat="server">
    <table class="table">
        <tr>
            <td style="background-color: #F7F7F7; text-align: left; margin-left: 80px;" 
                class="style3">
                <asp:Label ID="Label2" runat="server" 
                    style="font-size: x-large; font-weight: 700; font-style: italic" 
                    Text="Inmates"></asp:Label>
            </td>
            <td style="background-color: #F7F7F7; text-align: right; margin-left: 80px;" 
                class="style3">
                <asp:Button ID="Button3" runat="server" Text="Register" CssClass="btn1" 
                    onclick="register_Click"/>
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn2" OnClientClick="javascript:return DeleteConfirm();"
                    onclick="delete_Click"/>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="style2" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Search by Name" 
                    style="font-size: medium; font-weight: 700"></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" Height="25px" Width="180px"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" Text="Search" CssClass="btn1" 
                    onclick="search_Click"/>
                <hr />
                
            </td>
        </tr>
        
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Visible="False" 
                    style="text-align: center">
                    <asp:Label ID="msg" runat="server" style="font-size: medium; color: #FF3300" ></asp:Label>
                </asp:Panel>
                <asp:GridView ID="GridView2" runat="server" CssClass="Grid" CellPadding="4" 
                    AutoGenerateColumns="False" onrowdatabound="RowDataBound" 
                    AllowPaging="True" onpageindexchanging="GridView2_PageIndexChanging">
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:CheckBox ID="checkAll" runat="server" onclick="checkAll(this);" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkDel" runat="server" BorderStyle="Ridge" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="id" HeaderText="ID" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" 
                            DataNavigateUrlFormatString="edit2.aspx?id={0}" DataTextField="names" 
                            HeaderText="Name" NavigateUrl="~/edit2.aspx" />
                        <asp:BoundField DataField="age" HeaderText="Age"/>
                        <asp:BoundField DataField="gender" HeaderText="Gender"/>
                        <asp:BoundField DataField="education" HeaderText="Education"/>
                        <asp:BoundField DataField="state_origin" HeaderText="State"/>
                        <asp:BoundField DataField="nationality" HeaderText="Nationality"/>
                        <asp:BoundField DataField="marital" HeaderText="Marital Sattus" />
                        <asp:BoundField DataField="file_no" HeaderText="File No"/>
                    </Columns>
                  <HeaderStyle CssClass="GridHeader" />
                  <RowStyle CssClass="GridRow" />
                  <AlternatingRowStyle CssClass="GridAlternateRow" />
                  <SelectedRowStyle CssClass="GridSelectedRow"/>
                </asp:GridView>
               
                
               
            </td>
        </tr>
    </table>
      
  </asp:Panel>
</asp:Content>

