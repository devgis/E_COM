﻿<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table  cellpadding=0 cellspacing=0  style=" font-size: 9pt; font-family: 宋体;width :574px; height :177px; vertical-align :top ; border-top-style: none; border-right-style: none; border-left-style: none; text-align: left; border-bottom-style: none; background-image: url(images/精品推荐.jpg); background-repeat :no-repeat "  >
        <tr align="left">
            <td  align="left" style="width :574px;height :38px; vertical-align: top; text-align: left;" colspan="0" rowspan="0" >
            <br />
             <p align =right style ="vertical-align :middle">
                 <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl ="~/images/更多.jpg" NavigateUrl="~/goodsList.aspx?id=2&&var=1" Font-Underline="False"></asp:HyperLink>
                 &nbsp;&nbsp;&nbsp;
             </p>
          </td>
        </tr>
        <tr>
            <td align="center" style ="width :574px; vertical-align :middle  ">
               <asp:DataList ID="dLRefine" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="dLRefine_ItemCommand"  >
                    <ItemTemplate>
                        <table style=" height: 120px">
                            <tr>
                                <td rowspan="5" style="width: 29px">
                                 <asp:Image ID="imageRefine" runat="server"  ImageUrl =<%#DataBinder.Eval(Container.DataItem,"BookUrl")%>/>
                                </td>
                                <td colspan="2">
                                <asp:LinkButton ID="lnkbtnRName" runat="server" CommandName="detailSee"  Font-Underline=false  CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
                                <%#DataBinder.Eval(Container.DataItem, "BookName")%>
                                </asp:LinkButton>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    市场价：</td>
                                <td>
                                 <%#GetVarMKP(DataBinder.Eval(Container.DataItem, "MarketPrice").ToString())%>￥
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    热卖价：</td>
                                <td>
                                  <%#GetVarHot(DataBinder.Eval(Container.DataItem, "HotPrice").ToString())%>￥
                                </td>
                            </tr>
                             <tr>
                                <td colspan="2">
                                    <asp:ImageButton ID="imagebtnRefine" runat="server" CommandName="buy" CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%> ImageUrl="~/images/购买.jpg" />
                                    </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>  
            </td>
        </tr>
        </table>
        <table  cellpadding=0 cellspacing=0  style=" font-size: 9pt; font-family: 宋体;width :574px; height :315px; vertical-align :top ; border-top-style: none; border-right-style: none; border-left-style: none; text-align: left; border-bottom-style: none; background-image: url(images/特价商品.jpg); background-repeat :no-repeat "  >
           <tr>
            <td align="left" style="width :574px; height :22px; vertical-align: top; text-align: left;" >
            <br />
                <p align =right style ="vertical-align :middle">
                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl ="~/images/更多.jpg" NavigateUrl="~/goodsList.aspx?id=3&&var=1" Font-Underline="False">特价商品</asp:HyperLink><font color="white">/&nbsp; </font>
                &nbsp;&nbsp;&nbsp;
        </p>
        </td> 
        </tr>
        <tr>
        <td align="center" style ="width :574px; vertical-align :middle  ">
               <asp:DataList ID="dlDiscount" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="dlDiscount_ItemCommand"  >
                    <ItemTemplate>
                        <table style=" height: 120px">
                            <tr>
                                <td rowspan="5" style="width: 29px">
                                 <asp:Image ID="imageDiscount" runat="server"  ImageUrl =<%#DataBinder.Eval(Container.DataItem,"BookUrl")%>/>
                                </td>
                                <td colspan="2">
                                <asp:LinkButton ID="lnkbtnDName" runat="server" CommandName="detailSee"  Font-Underline=false CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
                                <%#DataBinder.Eval(Container.DataItem, "BookName")%>
                                </asp:LinkButton>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    市场价：</td>
                                <td>
                                 <%#GetVarMKP(DataBinder.Eval(Container.DataItem, "MarketPrice").ToString())%>￥
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    热卖价：</td>
                                <td>
                                  <%#GetVarHot(DataBinder.Eval(Container.DataItem, "HotPrice").ToString())%>￥
                                </td>
                            </tr>
                             <tr>
                                <td colspan="2">
                                    <asp:ImageButton ID="imagebtnDiscount" runat="server" CommandName="buy" ImageUrl="~/images/购买.jpg" CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>/>
                                    </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>  </td>
        
        </tr>
         </table>
        <table  cellpadding=0 cellspacing=0  style=" font-size: 9pt; font-family: 宋体;width :574px; height :314px; vertical-align :top ; border-top-style: none; border-right-style: none; border-left-style: none; text-align: left; border-bottom-style: none; background-image: url(images/热销商品.jpg); background-repeat :no-repeat "  >
           <tr>
             <td align="left" style ="width :574px; height :22px;" >
             <br />
                 <p align =right style ="vertical-align :middle">
                 <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl ="~/images/更多.jpg" NavigateUrl="~/goodsList.aspx?id=4&&var=1" Font-Underline="False">热销商品</asp:HyperLink>
                  &nbsp;&nbsp;&nbsp;
                 </p>
                  
                 </td>
       
        </tr>
        <tr>
            <td align="center" style ="width :574px; vertical-align :middle  "  >
               <asp:DataList ID="dlHot" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="dlHot_ItemCommand"  >
                    <ItemTemplate>
                        <table style=" height: 120px">
                            <tr>
                                <td rowspan="5" style="width: 29px">
                                 <asp:Image ID="imageHot" runat="server"  ImageUrl =<%#DataBinder.Eval(Container.DataItem,"BookUrl")%>/>
                                </td>
                                <td colspan="2">
                                <asp:LinkButton ID="lnkbtnHName" runat="server" CommandName="detailSee"  Font-Underline=false CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>>
                                <%#DataBinder.Eval(Container.DataItem, "BookName")%>
                                </asp:LinkButton>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    市场价：</td>
                                <td>
                                 <%#GetVarMKP(DataBinder.Eval(Container.DataItem, "MarketPrice").ToString())%>￥
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    热卖价：</td>
                                <td>
                                  <%#GetVarHot(DataBinder.Eval(Container.DataItem, "HotPrice").ToString())%>￥
                                </td>
                            </tr>
                             <tr>
                                <td colspan="2">
                                    <asp:ImageButton ID="imagebtnHot" runat="server" CommandName="buy" ImageUrl="~/images/购买.jpg"  CommandArgument =<%#DataBinder.Eval(Container.DataItem, "BookID")%>/>
                                    </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
