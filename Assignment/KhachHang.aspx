<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="KhachHang.aspx.vb" Inherits="Assignment.KhachHang" %>

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
    <div id="wrapper">
    <form id="form1" runat="server">
        <div>
            <div><asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Chọn bảng" Value="Table">
                    <asp:MenuItem NavigateUrl="~/HoaDon.aspx" Text="Bảng hóa đơn" Value="HoaDon"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/HoaDonCT.aspx" Text="Bảng hóa đơn chi tiết" Value="HoaDonChiTiet"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/SanPham.aspx" Text="Bảng sản phẩm " Value="SanPham"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/LoaiSP.aspx" Text="Bảng sản phẩm" Value="LoaiSanPham"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu></div>

             <div id="title">Ứng dụng quản lý bán hàng</div>

        </div>
       
    <div style="font-family: 'Times New Roman', Times, serif; font-size: 25px; font-weight: bold">
    
        <br />
        <br />
        
        <br />
        <br />
        <br />
        <div id="titletable">Bảng khách hàng</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Ma_KH" DataSourceID="SqlDataSource1" Font-Size="15pt" style="margin-right: 0px" Width="100%">
            <Columns>
                <asp:BoundField DataField="Ma_KH" HeaderText="Mã khách hàng" ReadOnly="True" SortExpression="Ma_KH" />
                <asp:BoundField DataField="Ten_KhachHang" HeaderText="Tên khách hàng" SortExpression="Ten_KhachHang" />
                <asp:BoundField DataField="SDT" HeaderText="Số điện thoại" SortExpression="SDT" />
                <asp:BoundField DataField="Dia_Chi" HeaderText="Đại chỉ" SortExpression="Dia_Chi" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle VerticalAlign="Middle" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    <div id="distance"></div>
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_KH" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center" GridLines="Both">
            <EditItemTemplate>

                <table>
                    <tr>
                        <td>Ma_KH: </td>
                        <td> <asp:Label ID="Ma_KHLabel1" runat="server" Text='<%# Eval("Ma_KH") %>' /></td>
                    </tr>
                    <tr>
                    <td> Ten_KhachHang:</td>
                        <td><asp:TextBox ID="Ten_KhachHangTextBox" runat="server" Text='<%# Bind("Ten_KhachHang") %>' /></td>
                    </tr>
                     <tr>
                    <td>  SDT::</td>
                        <td> <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' /></td>
                    </tr>
                     <tr>
                    <td>  Dia_Chi:</td>
                        <td><asp:TextBox ID="Dia_ChiTextBox" runat="server" Text='<%# Bind("Dia_Chi") %>' /></td>
                    </tr>
                </table>
              
     
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
                <tr><td>Mã khách hàng</td>
                <td><asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' /></td>
                </tr>
               <tr> <td>Tên khách hàng</td>
                <td><asp:TextBox ID="Ten_KhachHangTextBox" runat="server" Text='<%# Bind("Ten_KhachHang") %>' /></td>
                </tr>
                    <tr>
               <td> Số điện thoại</td>
               <td> <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' /></td>
                </tr>
                    <tr>
                <td>Địa chỉ</td>
                <td><asp:TextBox ID="Dia_ChiTextBox" runat="server" Text='<%# Bind("Dia_Chi") %>' /></td>
               </tr>
               <tr>
                   <td></td>
                   <td> <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
               </tr> </table>
            </InsertItemTemplate>
            
             <ItemTemplate>
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbQuanLyBanHangConnectionString %>" DeleteCommand="DELETE FROM [tb_KhachHang] WHERE [Ma_KH] = @Ma_KH" InsertCommand="INSERT INTO [tb_KhachHang] ([Ma_KH], [Ten_KhachHang], [SDT], [Dia_Chi]) VALUES (@Ma_KH, @Ten_KhachHang, @SDT, @Dia_Chi)" SelectCommand="SELECT * FROM [tb_KhachHang]" UpdateCommand="UPDATE [tb_KhachHang] SET [Ten_KhachHang] = @Ten_KhachHang, [SDT] = @SDT, [Dia_Chi] = @Dia_Chi WHERE [Ma_KH] = @Ma_KH">
            <DeleteParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter Name="Ten_KhachHang" Type="String" />
                <asp:Parameter Name="SDT" Type="Int32" />
                <asp:Parameter Name="Dia_Chi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_KhachHang" Type="String" />
                <asp:Parameter Name="SDT" Type="Int32" />
                <asp:Parameter Name="Dia_Chi" Type="String" />
                <asp:Parameter Name="Ma_KH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
        </div>
</body>
</html>
