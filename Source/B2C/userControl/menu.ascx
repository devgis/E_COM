<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menu.ascx.cs" Inherits="userControl_menu" %>
 <table style="width :778px; height :104px;　font-size: 9pt; font-family: 宋体; vertical-align :top; background-image: url(../images/banner.jpg); background-repeat:no-repeat "  border="0" cellpadding="0" cellspacing="0">
    <tr valign =top >
    <td  align =left style="width: 778px; height: 93px; "  valign =top><br />
     <p align="right">
    <a href="shopCart.aspx" style=" color:Black; font-size: 9pt; font-family: 宋体;  text-decoration :none;"><font color =black>购物车</font></a>
    </p>
   
        <p align="left">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Font-Underline="False" >首页</asp:HyperLink>
        </p>
    </td> 
     </tr> 
     <tr>
    </table>
