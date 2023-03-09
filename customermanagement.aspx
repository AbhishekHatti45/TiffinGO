<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" EnableEventValidation = false AutoEventWireup="true" CodeBehind="customermanagement.aspx.cs" Inherits="TiffinGO.customermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
  <div class="card-header container-fluid card text-dark bg-light">Admin Customer Management</div>
  
  <div class="card-body">



      <section>
         <div  class="container-fluid">
         
         

         <div class="row"> 
         <div class= "col-md-4 ">
        <div class="card-header container-fluid card"> <center>Customer Details</center></div>
  <div class="card-body">
         
        

                        <div class="row">
                 <div class="col">
                    <center> 
                     <asp:Image ID="Image2" runat="server" Height="168px" Width="236px"></asp:Image>
                        <br>
                        <asp:Label ID="Label2" runat="server" ></asp:Label>
                    </center>
                 </div>
                 </div>

                 


                  <div class="row">
                  <div class="col-12">
                  <label>User ID</label>
                    <div class="form-group">
                    <div class="input-group">
                        <asp:TextBox ID="Textbox5" runat="server" placeholder="User ID" ></asp:TextBox>
                   <asp:Button class="btn btn-primary mr-1" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click1" 
                            ></asp:Button>

                        
                  </div>
                  

                    </div>
                 </div>

                 </div>
                 <div class="row">
                 <div class="col-md-6">
                    <label>Full Name</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" 
                            placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                      
                    </div>
                 </div>


                  <div class="col-md-6">
                   <label>City</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox6" runat="server" 
                            placeholder="city" ReadOnly="True" ></asp:TextBox>
                    </div>                 
                 </div>

                 </div>
                 
                 <div class="row">
                 <div class="col-12">
                 <label>Email ID</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox4" runat="server" 
                            placeholder="Email ID" ReadOnly="True" ></asp:TextBox>
                        
                       
                    

                    </div>  


                 </div>
                 </div>

                  <div class="row">
                 <div class="col-md-6">
                    <label>Contact No</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox3" runat="server" 
                            placeholder="Contact No" ReadOnly="True"></asp:TextBox>
                          
                    </div>
                 </div>

               


                 
                 <div class="col-md-6">
                   <label>Date of Birth</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox2" runat="server" 
                            placeholder="DD/MM/YYYY" ReadOnly="True" ></asp:TextBox>
                   
                   
                    </div>

                    
                 </div>
                 </div>

                 <div class="row">
                 <div class="col">
                    <label>Full Address</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox9" runat="server" 
                            placeholder="Full Address" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                   
                    </div>
                 </div>
                 </div>

                 <div class="row">
                 <div class="col-md-6">
                    <label>State</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox8" runat="server" 
                            placeholder="State" ReadOnly="True" ></asp:TextBox>
                    </div>
                 </div>

                

                 <div class="col-md-6">
                   <label>Pin Code</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox7" runat="server" 
                            placeholder="Pin Code" ReadOnly="True" ></asp:TextBox>
                     
                    </div>                 
                 </div>
                 </div>


                 <br />
                 
                 <div class="row">
                 <div class="col">
                  
                     <center>
                    <div class="form-group">
                        <a href="usersignup.aspx"><asp:Button class="btn btn-info btn-block btn-danger " 
                            ID="Button2" runat="server" Text="Delete User Permanantly" 
                            onclick="Button2_Click"  />
                        
                        </a>   
                    </div>
                    </center>
                  

                 </div>
                 </div>
             
         </div>
             <div class="row">
  <div class="col">
  <hr>
  </div>
  </div>
         </div>
       

         


         <div class= "col-md-8 ">
         
         
         <div class="card-header container-fluid card">Customer List</div>
  


   

  
         
          <div class="row">
  <div class="col">
   <asp:GridView ID="GridView1" runat="server" class="table  table-striped  table-bordered" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowSorting="True">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns >
        <asp:BoundField DataField="user_id" HeaderText="User ID" SortExpression="user_id" ReadOnly="True" />
       <asp:BoundField DataField="full_name" HeaderText="Full Name"  SortExpression="full_name" />
        <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
      
        <asp:TemplateField HeaderText="Email Address">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
      
    </Columns>

</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TiffinGOConnectionString %>" SelectCommand="SELECT [full_name], [dob], [contact_no], [email], [state], [city], [pincode], [full_address], [image], [user_id] FROM [customer_info] WHERE ([role] = @role)" DeleteCommand="DELETE FROM [customer_info] WHERE [user_id] = @original_user_id" InsertCommand="INSERT INTO [customer_info] ([full_name], [dob], [contact_no], [email], [state], [city], [pincode], [full_address], [image], [user_id]) VALUES (@full_name, @dob, @contact_no, @email, @state, @city, @pincode, @full_address, @image, @user_id)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [customer_info] SET [full_name] = @full_name, [dob] = @dob, [contact_no] = @contact_no, [email] = @email, [state] = @state, [city] = @city, [pincode] = @pincode, [full_address] = @full_address, [image] = @image WHERE [user_id] = @original_user_id">
    <DeleteParameters>
        <asp:Parameter Name="original_user_id" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="full_name" Type="String" />
        <asp:Parameter DbType="Date" Name="dob" />
        <asp:Parameter Name="contact_no" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="state" Type="String" />
        <asp:Parameter Name="city" Type="String" />
        <asp:Parameter Name="pincode" Type="String" />
        <asp:Parameter Name="full_address" Type="String" />
        <asp:Parameter Name="image" Type="String" />
        <asp:Parameter Name="user_id" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:Parameter DefaultValue="Customer" Name="role" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="full_name" Type="String" />
        <asp:Parameter DbType="Date" Name="dob" />
        <asp:Parameter Name="contact_no" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="state" Type="String" />
        <asp:Parameter Name="city" Type="String" />
        <asp:Parameter Name="pincode" Type="String" />
        <asp:Parameter Name="full_address" Type="String" />
        <asp:Parameter Name="image" Type="String" />
        <asp:Parameter Name="original_user_id" Type="String" />
    </UpdateParameters>
  
</asp:SqlDataSource>
    </div>
         </div>                     
        
        <div class="row">
  <div class="col">
  <hr>
  </div>
  </div>
         </div>
                        

         
         </div>
         </div>
    </section>



</div>

 
</asp:Content>
