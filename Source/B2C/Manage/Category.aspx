<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Manger_Category" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>商品类别管理</title>
</head>
<body style ="font-family :宋体; font-size :9pt;">
    <form id="form1" runat="server">
    <div>
    <table  cellSpacing="0" cellPadding="0" width="450" align="center" border="0" style ="font-family :宋体; font-size :9pt;">
				<tr>
					<td  height="25" align="left" style ="font-family :宋体; font-size :9pt;">
						&nbsp;商品类别管理</td>
					
				<tr>
				</tr>
				<tr>
				<td>
				<table cellSpacing="0" cellPadding="0" width="95%" align="center" border="0">
				<tr>
					<td height="23"  style ="font-family :宋体; font-size :9pt;">
                       <asp:GridView ID="gvCategoryList" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            PageSize="5"  Width="100%" HorizontalAlign="Center"
							HeaderStyle-CssClass="summary-title" OnPageIndexChanging="gvCategoryList_PageIndexChanging" OnRowDeleting="gvCategoryList_RowDeleting">
							<HeaderStyle Font-Bold="True"></HeaderStyle>
                            <Columns>
                                <asp:BoundField DataField="ClassID" HeaderText="类别号ID"   ItemStyle-Width="100" ItemStyle-HorizontalAlign="left" HeaderStyle-HorizontalAlign="left" />
                                <asp:BoundField DataField="ClassName" HeaderText="类别名称" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" />  
                                <asp:CommandField ShowDeleteButton="True" ItemStyle-Width="30" ItemStyle-HorizontalAlign="Center" />
                            </Columns>
                        </asp:GridView>
					</td>
				</tr>
			</table>
				</td>
				</tr>
			</table>
    </div>
    </form>
</body>
</html>
