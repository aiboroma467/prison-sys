<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="inmate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Style1.css" type="text/css" rel="Stylesheet" />
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
            height: 20px;
        }
        .style10
        {
            width: 100%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="welcm" Visible="False">     
        <table class="style10">
            <tr>
                <td>
                    <asp:Label ID="msg1" runat="server"  style="color: #3C765A; font-size: medium; " ></asp:Label>
                </td>
            </tr>
            <tr> 
                <td>
                    <asp:Button ID="Button3" runat="server" CssClass="btn1" Text="Register" onclick="msgReg_Click" 
                         />
                 </td>
            </tr>
        </table>
       <br />
      </asp:Panel>


    <asp:Panel ID="Panel3" runat="server" CssClass="exitmsg" Visible="False">
        <table class="style101">
            <tr>
                <td>
                    <asp:Label ID="msg2" runat="server"  
                        style="color: #A94D64; font-size: medium; " ></asp:Label>
                </td>
            </tr>
            <tr> 
                <td>
                    <asp:Button ID="Button4" runat="server" CssClass="btn2" Text="Back" onclick="msgback_Click"/>
                 </td>
            </tr>
        </table>
    </asp:Panel>


    <asp:Panel ID="Panel2" runat="server">
    <table class="table2" border="0">
        <tr>
            <td colspan="4">
                <asp:Label ID="msg" runat="server" Text="" style="color: #CC0000"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: right; background-color: #F7F7F7">
                <h4>New Inmate Registration</h4>
                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn3" onclick="save_Click" 
                   />
                <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn4" 
                     CausesValidation="False" onclick="back_Click"/>
            </td>
        </tr>
        <tr>
            <td colspan="4" 
                style="font-size: medium; color: #333333; font-style: italic; background-color: #F8F8F8;">
                Fields mark <span class="style1">*</span> are required</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" CssClass="style3" Text="Names :"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="fName" runat="server" Width="250px" Height="28px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="fName" ErrorMessage="*" 
                    style="color: #CC3300; font-size: x-large"></asp:RequiredFieldValidator>
            </td>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" CssClass="style3" Text="Age :"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="age" runat="server" Width="250px" Height="28px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" CssClass="style3" Text="Gender :"></asp:Label>
            </td>
            <td class="style8">
                <asp:DropDownList ID="gender" runat="server" class="form-control" Width="150px" Height="28px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:Label ID="Label11" runat="server" CssClass="style3" Text="Education :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="education" runat="server" class="form-control" Width="170px" Height="30px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Never</asp:ListItem>
                    <asp:ListItem>O level</asp:ListItem>
                    <asp:ListItem>Diploma</asp:ListItem>
                    <asp:ListItem>Bachelor Degree</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" CssClass="style3" Text="State :"></asp:Label>
            </td>
            <td class="style8">
                <asp:DropDownList ID="state" runat="server" class="form-control" Width="170px" Height="28px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Abia</asp:ListItem>
                    <asp:ListItem>Adamawa</asp:ListItem>
                    <asp:ListItem>Anambra</asp:ListItem>
                    <asp:ListItem> Akwa Ibom</asp:ListItem>
                    <asp:ListItem>Bauchi</asp:ListItem>
                    <asp:ListItem>Bayelsa</asp:ListItem>
                    <asp:ListItem>Benue</asp:ListItem>
                    <asp:ListItem>Borno</asp:ListItem>
                    <asp:ListItem>Cross River</asp:ListItem>
                    <asp:ListItem>Delta</asp:ListItem>
                    <asp:ListItem>Ebonyi</asp:ListItem>
                    <asp:ListItem>Enugu</asp:ListItem>
                    <asp:ListItem>Edo</asp:ListItem>
                    <asp:ListItem>Ekiti</asp:ListItem>
                    <asp:ListItem>Gombe</asp:ListItem>
                    <asp:ListItem>Imo</asp:ListItem>
                    <asp:ListItem>Jigawa</asp:ListItem>
                    <asp:ListItem>Kaduna</asp:ListItem>
                    <asp:ListItem>Kano</asp:ListItem>
                    <asp:ListItem>Katsina</asp:ListItem>
                    <asp:ListItem>Kebbi</asp:ListItem>
                    <asp:ListItem>Kogi</asp:ListItem>
                    <asp:ListItem>Kwara</asp:ListItem>
                    <asp:ListItem>Lagos</asp:ListItem>
                    <asp:ListItem>Nasarawa</asp:ListItem>
                    <asp:ListItem>Niger</asp:ListItem>
                    <asp:ListItem>Ogun</asp:ListItem>
                    <asp:ListItem>Ondo</asp:ListItem>
                    <asp:ListItem>Osun</asp:ListItem>
                    <asp:ListItem>Oyo</asp:ListItem>
                    <asp:ListItem>Plateau</asp:ListItem>
                    <asp:ListItem>Rivers</asp:ListItem>
                    <asp:ListItem>Sokoto</asp:ListItem>
                    <asp:ListItem>Taraba</asp:ListItem>
                    <asp:ListItem>Yobe</asp:ListItem>
                    <asp:ListItem>Zamfara</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:Label ID="Label13" runat="server" CssClass="style3" Text="Nationality :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="nation" runat="server" Width="250px" Height="28px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="background-color: #F7F7F7" class="style9">
                </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" CssClass="style3" Text="Marital Status :"></asp:Label>
            </td>
            <td class="style8">
                <asp:DropDownList ID="marital" runat="server" class="form-control" Width="170px" Height="28px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:Label ID="Label14" runat="server" CssClass="style3" Text="Offence :"></asp:Label>
             </td>
            <td>
                <asp:DropDownList ID="offence" runat="server" class="form-control" Width="200px" Height="28px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>murder</asp:ListItem>
                    <asp:ListItem>Rape</asp:ListItem>
                    <asp:ListItem>Steal</asp:ListItem>
                    <asp:ListItem>Robbery</asp:ListItem>
                    <asp:ListItem>Abduction</asp:ListItem>
                    <asp:ListItem>Cheating</asp:ListItem>
                    <asp:ListItem>Corruption and Abuse of office</asp:ListItem>
                    <asp:ListItem>Forgery and Personating</asp:ListItem>
                    <asp:ListItem>Frauds by Trustees</asp:ListItem>
                    <asp:ListItem>Unlawful assembly</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" CssClass="style3" Text="Date of Judgement :"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="judge" runat="server" Width="250px" Height="28px"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:Label ID="Label10" runat="server" CssClass="style3" Text="Date Convicted :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="convict" runat="server" Width="250px" Height="28px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label12" runat="server" CssClass="style3" Text="Prison Name :"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="prisonN" runat="server" Height="28px" Width="150px"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" CssClass="style3" Text="Sentence :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="sentence" runat="server" Height="28px" Width="250px"></asp:TextBox>
            </td>
        </tr>

           <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" CssClass="style3" Text="File No :"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="file" runat="server" Width="150px" Height="28px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="file" ErrorMessage="*" 
                    style="color: #CC3300; font-size: x-large"></asp:RequiredFieldValidator>
            </td>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" CssClass="style3" Text="Upload Picture :"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="pic" runat="server" BorderStyle="Double" 
                    ToolTip="upload your pic" />
            </td>
        </tr>
        </table>
        </asp:Panel>
</asp:Content>



