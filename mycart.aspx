<%@ Page Title="" Language="C#" MasterPageFile="~/customerTiffinGO.Master" AutoEventWireup="true" CodeBehind="mycart.aspx.cs" Inherits="TiffinGO.mycart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <p>-</p>
      
      </div>
    
    
  </footer><!-- End Footer -->
               <br />
    <div  class="container-fluid card text-dark bg-light" >
  <div class="card-header">My Cart</div>
  <div class="card">
  <div class="card-body">
      </div>
      <br />
      <asp:HiddenField ID="HiddenField1" runat="server" />
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      <br />
      <asp:GridView ID="GridView1" class="table table-striped  table-bordered " runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
          <Columns>
              <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
              <asp:TemplateField>
                    <ItemTemplate>
                                 <div class="container-fluid">
                                     <div class="row">
                                         <div class="col-lg-10">

                                             <div class="row">
                                                 <div class="col-10">
                                                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("SubscriptionType") %>' Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                                                     
                                                         <asp:Label ID="Label16" runat="server" Text='<%# Eval("id") %>' Visible="False"></asp:Label>
                                                 </div>
                                                 <div class="col-2">
                                                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("foodtype") %>' Font-Bold="True" Font-Italic="True"></asp:Label>
                                                
                                                     
                                                 </div>
                                             </div>
                                               <div class="container-fluid">

                                            <hr>

                                        </div>
                                                <div class="row">
                                                 <div class="col-12">
                                                     <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Description :"></asp:Label>
                                                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>' Font-Italic="True"></asp:Label>
                                                 </div>
                                             </div>
                                              <div class="container-fluid">

                                            <hr>

                                        </div>
                                                <div class="row">
                                                    <div class="col-4">
                                               
                                                        
                                                    </div>
                                                 <div class="col-4">
                                                   
                                                     </div>
                                                 <div class="col-4">
                                                     
                                                       Price&nbsp;  <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                                                     -/RS
                                                </div>
                                             </div>

                                         </div>
                                         <div class="col-lg-2">
                                             <br/><a href='<%# Eval("image") %>' class="gallery-lightbox">
                                             <asp:Image Class="img-fluid" alt="" ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' /></a>
                                             <br/>
                                         </div>
                                     </div>
                                        <div class="container-fluid">

                                            <hr>

                                        </div>
                                 </div>


                             </ItemTemplate>
              </asp:TemplateField>
          </Columns>

      </asp:GridView>

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TiffinGOConnectionString %>" SelectCommand="SELECT * FROM [subscription] WHERE ([id] = @id)">
          <SelectParameters>
              <asp:ControlParameter ControlID="HiddenField1" Name="id" PropertyName="Value" Type="Int32" />
          </SelectParameters>
      </asp:SqlDataSource>

      </div>


         <div class="card-body">
  <center>
      <asp:Button ID="Button1" runat="server" class="book-a-table-btn scrollto"  Text="Subscribe" Visible="False" OnClick="Button1_Click"/>
 
          <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" 
          Font-Size="Medium" ForeColor="Red"></asp:Label>
          </center>
  </div>

        <asp:GridView ID="GridView2" class="table table-striped  table-bordered " runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="SubscriptionType" HeaderText="SubscriptionType" SortExpression="SubscriptionType" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
               
                <asp:TemplateField HeaderText="Image">
                      <EditItemTemplate>
                    <asp:TextBox ID="Textbox1" runat="server" Text='<%# Eval("image") %>'></asp:TextBox>
                          <asp:Label ID="Label7" runat="server" Text='<%# Eval("id") %>' Visible="False"></asp:Label>
                          <asp:Label ID="Label114" runat="server" Text='<%# Eval("image") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    
                          <asp:Label ID="Label7" runat="server" Text='<%# Eval("id") %>' Visible="False"></asp:Label>
                    <asp:Image ID="Image2" runat="server" class="img-fluid" ImageUrl='<%# Eval("image") %>'  Height="100" Width="250" />
                </ItemTemplate>
                   

                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Remove" ValidateRequestMode="Enabled">
                <ItemTemplate>
                    <asp:Button ID="Button5" runat="server" CausesValidation="False" 
                        CommandName="Delete" onclick="Button5_Click" Text="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
               
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>    
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TiffinGOConnectionString %>" SelectCommand="select m.id,m.user_id,s.SubscriptionType,s.image,s.price,description
           from subscription s,mycart m where s.id=m.pid and m.user_id=@user_id">
            <SelectParameters>
                <asp:SessionParameter Name="user_id" SessionField="user_id" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    
    
    
    
    
    
       <br>
      <div class="card">
      <br>
      <center>
      
   
         <div class="card text-white  mb-3" class="rounded" style="max-width: 26rem;">
         <div class="card border-danger">
  <div class="card-body">
  <div class="row">
  <div class="col-md-6">
           <asp:Label ID="Label17" runat="server" Text="Total Product Bill" ForeColor="Black"></asp:Label>
                 
      </div>
           <div class="col-md-4">
      
               <asp:Label ID="Label22" runat="server" ForeColor="Black" ></asp:Label>
            
      </div>
            <div class="col-md-2">


            </div>
      </div>
      <div class="row">
  <div class="col-md-6">
           <asp:Label ID="Label18" runat="server" Text="+ Service Charges" ForeColor="Black"></asp:Label>
           </div>
           
  <div class="col-md-4 ">
           
               <asp:Label ID="Label21" runat="server" ForeColor="Black" Text="Rs.99/-"></asp:Label>
       </div>
       <div class="col-md-2">
            </div>
        </div>
        <hr>
        
  <div class="row">
  <div class="col-md-6">
           <asp:Label ID="Label19" runat="server" Text="Grand Total" ForeColor="Black"></asp:Label>
                 
      </div>
           <div class="col-md-4">
               <asp:Label ID="Label20" runat="server" ForeColor="Black"></asp:Label>
            
      </div>
            <div class="col-md-2">


            </div>
      </div>
      <br>

      <div class="row">
                 <div class="col">
                  

                    <div class="form-group">
                        <asp:Button class="btn btn-info btn-block btn-danger" 
                            ID="Button2" runat="server" Text="Place Order" OnClick="Button2_Click" 
                             />
                        <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
                         
                    </div>
                    
                  

                 </div>
                 </div>
             
      </div>
      </div></div>
      </center>
      
  </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
       
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    </div>
      <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
    
    <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
    
</asp:Content>
