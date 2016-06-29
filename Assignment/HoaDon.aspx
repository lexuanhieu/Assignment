<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HoaDon.aspx.vb" Inherits="Assignment.HoaDon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    #title{
        text-align:center;
        font-size:30px;
    }
    #titletable{
        text-align:center;
        font-size:20px;
    }
    body {
        height:100%;
       
    }
  #distance{
      height:20px;
  }
   
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <div>
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Chọn bảng" Value="Chọn bảng">
                    <asp:MenuItem NavigateUrl="~/KhachHang.aspx" Text="Bảng khách hàng" Value="Bảng khách hàng"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/HoaDonCT.aspx" Text="Bảng hóa đơn chi tiết" Value="Bảng hóa đơn chi tiết"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/SanPham.aspx" Text="Bảng sản phẩm" Value="Bảng sản phẩm"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/LoaiSP.aspx" Text="Bảng loại sản phẩm" Value="Bảng loại sản phẩm"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
       </div>
         <div id="title">Ứng dụng quảng lý bán hàng</div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div id="titletable">Bảng hóa đơn</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Ma_HD" DataSourceID="SqlDataSource1" Width="100%">
            <Columns>
                <asp:BoundField DataField="Ma_HD" HeaderText="Ma_HD" ReadOnly="True" SortExpression="Ma_HD" />
                <asp:BoundField DataField="Ma_KH" HeaderText="Ma_KH" SortExpression="Ma_KH" />
                <asp:BoundField DataField="Ten_HD" HeaderText="Ten_HD" SortExpression="Ten_HD" />
                <asp:BoundField DataField="Ngay_Lap" HeaderText="Ngay_Lap" SortExpression="Ngay_Lap" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    
    </div>
        <div id="distance"></div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_HD" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both" HorizontalAlign="Center">
            <EditItemTemplate>
                Ma_HD:
                <asp:Label ID="Ma_HDLabel1" runat="server" Text='<%# Eval("Ma_HD") %>' />
                <br />
                Ma_KH:
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                Ten_HD:
                <asp:TextBox ID="Ten_HDTextBox" runat="server" Text='<%# Bind("Ten_HD") %>' />
                <br />
                Ngay_Lap:
                <asp:TextBox ID="Ngay_LapTextBox" runat="server" Text='<%# Bind("Ngay_Lap") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <EmptyDataTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </EmptyDataTemplate>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                <table>
               <tr><td>Mã hóa đơn</td>
               <td><asp:TextBox ID="Ma_HDTextBox" runat="server" Text='<%# Bind("Ma_HD") %>' /></td> 
               </tr>
               <tr>
                   <td>Mã khách hàng</td>
                <td><asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' /></td>
                </tr>
               <tr>
                   <td>Tên hóa đơn</td>
               <td><asp:TextBox ID="Ten_HDTextBox" runat="server" Text='<%# Bind("Ten_HD") %>' /></td>
                </tr>
                    <tr>
               <td>Ngày lập</td>
                <td><asp:TextBox ID="Ngay_LapTextBox" runat="server" Text='<%# Bind("Ngay_Lap") %>' /></td>
                </tr>
              <tr> 
                  <td></td>
                  <td> <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
           </tr>
                   </table>
                    </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbQuanLyBanHangConnectionString %>" DeleteCommand="DELETE FROM [tb_HoaDon] WHERE [Ma_HD] = @Ma_HD" InsertCommand="INSERT INTO [tb_HoaDon] ([Ma_HD], [Ma_KH], [Ten_HD], [Ngay_Lap]) VALUES (@Ma_HD, @Ma_KH, @Ten_HD, @Ngay_Lap)" SelectCommand="SELECT * FROM [tb_HoaDon]" UpdateCommand="UPDATE [tb_HoaDon] SET [Ma_KH] = @Ma_KH, [Ten_HD] = @Ten_HD, [Ngay_Lap] = @Ngay_Lap WHERE [Ma_HD] = @Ma_HD">
            <DeleteParameters>
                <asp:Parameter Name="Ma_HD" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_HD" Type="String" />
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter Name="Ten_HD" Type="String" />
                <asp:Parameter Name="Ngay_Lap" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter Name="Ten_HD" Type="String" />
                <asp:Parameter Name="Ngay_Lap" Type="DateTime" />
                <asp:Parameter Name="Ma_HD" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
