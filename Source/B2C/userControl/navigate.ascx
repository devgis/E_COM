<%@ Control Language="C#" AutoEventWireup="true" CodeFile="navigate.ascx.cs" Inherits="userControl_navigate" %>
<table  style="width: 204px; height:448px; font-size: 9pt; font-family: 宋体; vertical-align :top ; background-image: url(images/商品分类.jpg);  background-repeat :no-repeat"  border="0" cellpadding="0" cellspacing="0" >
<tr>
<td style="height: 35px">
</td>
</tr>
    <tr align =center style="width: 204px;  font-size: 9pt; font-family: 宋体; vertical-align :top ;">
        <td>
         <asp:DataList ID="dlClass" runat="server"  OnItemCommand="dlClass_ItemCommand">
                <ItemTemplate>
                    <table >
                        <tr>
                        <td align =left  style ="width :28px; height :25px;vertical-align :bottom">
                        <asp:Image ID="imageIcon" runat="server"  ImageUrl =<%#DataBinder.Eval(Container.DataItem,"CategoryUrl")%> />
                        </td>
                      <td> </td>
                            <td align =left style ="width :80px;  height :25px; font-size: 9pt; font-family: 宋体; vertical-align :bottom " > 
                            <asp:LinkButton ID="lnkbtnClass" runat="server" CommandName="select" CausesValidation="False"  CommandArgument =<%#DataBinder.Eval(Container.DataItem,"ClassID") %>><%# DataBinder.Eval(Container.DataItem, "ClassName") %></asp:LinkButton>
                            </td>
                        </tr>
                        
                    </table> 
                </ItemTemplate>
            </asp:DataList>
            </td>
    </tr>
    </table>