<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" EnableEventValidation = false CodeBehind="orderedProducts.aspx.cs" Inherits="TiffinGO.orderedProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" class="table datatable table-striped  table-bordered " runat="server" AutoGenerateColumns="False" DataKeyNames="oid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="oid" HeaderText="oid" InsertVisible="False" ReadOnly="True" SortExpression="oid" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
            <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
            <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
            <asp:BoundField DataField="totalbill" HeaderText="totalbill" SortExpression="totalbill" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TiffinGOConnectionString %>" DeleteCommand="DELETE FROM [orders] WHERE [oid] = @oid" InsertCommand="INSERT INTO [orders] ([user_id], [StartDate], [EndDate], [totalbill], [status]) VALUES (@user_id, @StartDate, @EndDate, @totalbill, @status)" SelectCommand="SELECT * FROM [orders]" UpdateCommand="UPDATE [orders] SET [user_id] = @user_id, [StartDate] = @StartDate, [EndDate] = @EndDate, [totalbill] = @totalbill, [status] = @status WHERE [oid] = @oid">
        <DeleteParameters>
            <asp:Parameter Name="oid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter DbType="Date" Name="StartDate" />
            <asp:Parameter DbType="Date" Name="EndDate" />
            <asp:Parameter Name="totalbill" Type="Int32" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter DbType="Date" Name="StartDate" />
            <asp:Parameter DbType="Date" Name="EndDate" />
            <asp:Parameter Name="totalbill" Type="Int32" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="oid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>



    <hr />
    <br />
    <br />
    <asp:GridView ID="GridView2" class="table datatable table-striped  table-bordered " runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="oid" HeaderText="oid" SortExpression="oid" />
            <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
            <asp:BoundField DataField="subscriptionType" HeaderText="subscriptionType" SortExpression="subscriptionType" />
            <asp:BoundField DataField="foodtype" HeaderText="foodtype" SortExpression="foodtype" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
            <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
            <asp:BoundField DataField="full_address" HeaderText="full_address" SortExpression="full_address" />
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TiffinGOConnectionString %>" SelectCommand=" SELECT m.oid,m.pid,o.user_id,s.subscriptionType,s.foodtype,s.price,o.StartDate,o.EndDate,c.full_address FROM orderedProducts m,orders o,subscription s,customer_info c where s.id=m.pid and o.user_id=c.user_id"></asp:SqlDataSource>


</asp:Content>
