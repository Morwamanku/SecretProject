<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Practice dropdownlist.aspx.cs" Inherits="StudentConnect_Project.Practice_dropdownlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         

    <asp:DropDownList ID="ddlFaculty" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlFaculty_SelectedIndexChanged">
    <asp:ListItem Text="Faculty of Art, Design and Architecture" Value="ArtDesignArchitecture"></asp:ListItem>
    <asp:ListItem Text="School of Business and Economics" Value="BusinessEconomics"></asp:ListItem>
    <asp:ListItem Text="Faculty of Education" Value="Education"></asp:ListItem>
    <asp:ListItem Text="Faculty of Engineering & Built Environment" Value="EngineeringBuiltEnvironment"></asp:ListItem>
    <asp:ListItem Text="Faculty of Health Sciences" Value="HealthSciences"></asp:ListItem>
    <asp:ListItem Text="Faculty of Humanities" Value="Humanities"></asp:ListItem>
    <asp:ListItem Text="Faculty of Law" Value="Law"></asp:ListItem>
    <asp:ListItem Text="Faculty of Science" Value="Science"></asp:ListItem>
    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
</asp:DropDownList>

<asp:DropDownList ID="ddlDegree" runat="server"></asp:DropDownList>




        </div>
    </form>
</body>
</html>
