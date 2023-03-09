<%@ Page Title="" Language="C#" MasterPageFile="~/customerTiffinGO.Master" AutoEventWireup="true" CodeBehind="subscription2.aspx.cs" Inherits="TiffinGO.subscription2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <p>-</p>
      
      </div>
    
    
  </footer><!-- End Footer -->
               <br />


         <div  class="container-fluid" class="card text-dark bg-light" >
  <div class="card-header"><h3><ceter>Our Subscriptions </h3>
     </div>
           
  
           
           
   <div class="card border-black">
  <div class="card-body ">


         <div class="row">
         <div class="col">
             <center>

    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:GridView ID="GridView1" class="table table-striped  table-bordered " runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Subscription_ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
         
            
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
                                                     Price&nbsp;
                                                     <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                                                     -/RS</div>
                                                 <div class="col-4">
                                                     <asp:Button ID="Button2" class="book-a-table-btn scrollto" runat="server" Text="SUBSCRIBE" OnClick="Button2_Click" /> 
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



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TiffinGOConnectionString %>" SelectCommand="SELECT * FROM [subscription] WHERE ([foodtype] = @foodtype)">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="foodtype" PropertyName="Value" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

      </center>

          </div>
          </div>


      </div>
</div>

</div>
   




   


    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</asp:Content>
