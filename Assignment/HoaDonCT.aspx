<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HoaDonCT.aspx.vb" Inherits="Assignment.HoaDonCT" %>

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
    &nbsp;<asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Chọn bảng" Value="Chọn bảng">
                    <asp:MenuItem NavigateUrl="~/KhachHang.aspx" Text="Khách hàng" Value="Khách hàng"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/HoaDon.aspx" Text="Hóa đơn" Value="Hóa đơn"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/SanPham.aspx" Text="Sản phẩm" Value="Sản phẩm"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/LoaiSP.aspx" Text="Loại sản phẩm" Value="Loại sản phẩm"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
        </div>
        <div id="title">Ứng dụng quản lý bán hàng</div>
        <br/>
        <br/>
        <br/>
        <br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Ma_HDCT" DataSourceID="SqlDataSource1" Width="100%">
            <Columns>
                <asp:BoundField DataField="Ma_HDCT" HeaderText="Ma_HDCT" ReadOnly="True" SortExpression="Ma_HDCT" />
                <asp:BoundField DataField="Ma_HD" HeaderText="Ma_HD" SortExpression="Ma_HD" />
                <asp:BoundField DataField="Ma_SP" HeaderText="Ma_SP" SortExpression="Ma_SP" />
                <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                <asp:BoundField DataField="Thanh_Tien" HeaderText="Thanh_Tien" SortExpression="Thanh_Tien" />
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
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Ma_HDCT" DataSourceID="SqlDataSource1" GridLines="Both" HorizontalAlign="Center">
            <EditItemTemplate>
                Ma_HDCT:
                <asp:Label ID="Ma_HDCTLabel1" runat="server" Text='<%# Eval("Ma_HDCT") %>' />
                <br />
                Ma_HD:
                <asp:TextBox ID="Ma_HDTextBox" runat="server" Text='<%# Bind("Ma_HD") %>' />
                <br />
                Ma_SP:
                <asp:TextBox ID="Ma_SPTextBox" runat="server" Text='<%# Bind("Ma_SP") %>' />
                <br />
                SoLuong:
                <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                <br />
                Thanh_Tien:
                <asp:TextBox ID="Thanh_TienTextBox" runat="server" Text='<%# Bind("Thanh_Tien") %>' />
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
                    <tr>
                        <td>Mã hóa đơn CT</td>
                        <td> <asp:TextBox ID="Ma_HDCTTextBox" runat="server" Text='<%# Bind("Ma_HDCT") %>' /></td>
                    </tr>
              <tr>
                  <td>Mã hóa đơn</td>
                  <td><asp:TextBox ID="Ma_HDTextBox" runat="server" Text='<%# Bind("Ma_HD") %>' /></td>
              </tr>
               <tr>
                   <td>Mã sản phẩm</td>
                   <td> <asp:TextBox ID="Ma_SPTextBox" runat="server" Text='<%# Bind("Ma_SP") %>' /></td>
               </tr>
                <tr>
                    <td>Số lượng</td>
                    <td> <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' /></td>
                </tr>
                <tr><td>Thành tiền</td>
                    <td><asp:TextBox ID="Thanh_TienTextBox" runat="server" Text='<%# Bind("Thanh_Tien") %>' /></td>
                </tr>
               <tr>
                   <td></td>
               <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbQuanLyBanHangConnectionString %>" DeleteCommand="DELETE FROM [tb_HoaDonChiTiet] WHERE [Ma_HDCT] = @Ma_HDCT" InsertCommand="INSERT INTO [tb_HoaDonChiTiet] ([Ma_HDCT], [Ma_HD], [Ma_SP], [SoLuong], [Thanh_Tien]) VALUES (@Ma_HDCT, @Ma_HD, @Ma_SP, @SoLuong, @Thanh_Tien)" SelectCommand="SELECT * FROM [tb_HoaDonChiTiet]" UpdateCommand="UPDATE [tb_HoaDonChiTiet] SET [Ma_HD] = @Ma_HD, [Ma_SP] = @Ma_SP, [SoLuong] = @SoLuong, [Thanh_Tien] = @Thanh_Tien WHERE [Ma_HDCT] = @Ma_HDCT">
            <DeleteParameters>
                <asp:Parameter Name="Ma_HDCT" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_HDCT" Type="String" />
                <asp:Parameter Name="Ma_HD" Type="String" />
                <asp:Parameter Name="Ma_SP" Type="String" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="Thanh_Tien" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ma_HD" Type="String" />
                <asp:Parameter Name="Ma_SP" Type="String" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="Thanh_Tien" Type="Decimal" />
                <asp:Parameter Name="Ma_HDCT" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
