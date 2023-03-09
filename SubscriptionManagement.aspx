<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" EnableEventValidation = false AutoEventWireup="true" CodeBehind="SubscriptionManagement.aspx.cs" Inherits="TiffinGO.SubscriptionManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     
  <div class="card-header container-fluid card text-dark bg-light">Admin Subscription Management</div>
 



      <section>
         <div  class="container-fluid">
         
         

         <div class="row"> 
         <div class= "col-md-4 ">
         <div class="card">
         
         <div class="card-header">Subscription Details</div>
         <div class="card border-primary">
  <div class="card-body">
         
        

                   

                 

                  <div class="row">
                  <div class="col-12">
                  <label>Subscription ID</label>
                    <div class="form-group">
                    <div class="input-group">
                        <asp:TextBox CssClass="form-control" ID="p1" runat="server" 
                            placeholder="Subscription ID" ></asp:TextBox>
                   <asp:Button class="btn btn-primary mr-1" ID="Button1" runat="server" Text="Go" onclick="Button1_Click" 
                           ></asp:Button>
                   
                  </div>
                  

                    </div>
                 </div>

                 </div>
                 <div class="row">
                 <div class="col-12">
                    <label>Subscription Name</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="p2" runat="server" 
                            placeholder="Subscription Name" ></asp:TextBox>
                      
                    </div>
                 </div>
                 </div>
                 <div class="row">
                  <div class="col-12">
                   <label>Subscription Category</label>
                    <div class="form-group">
                        
                        <asp:DropDownList ID="p3" CssClass="form-control" runat="server" placeholder="Select type">
                            
                              <asp:ListItem>veg</asp:ListItem>
                              <asp:ListItem>nonveg</asp:ListItem>
         
                           
                        </asp:DropDownList>
                    </div>                 
                 </div>

                 </div>
                 
                 <div class="row">
                 <div class="col-12">
                 <label>Subscription Price</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="p4" runat="server" 
                            placeholder="Product Price"  ></asp:TextBox>
                        
                       
                    

                    </div>  


                 </div>
                 </div>

                  <div class="row">
                 <div class="col-12">
                    <label>Subscription Description</label>
                    <div class="form-group">

                        <asp:TextBox CssClass="form-control" ID="p5" runat="server" 
                            placeholder="Subscription Description"  TextMode="MultiLine"></asp:TextBox>
                          
                    </div>
                 </div>
                 </div>
               


                
                  
                  <div class="row">
                 <div class="col-12">
                   <label>Image</label>
                    <div class="form-group">
                     <asp:Image ID="Image2" runat="server" Height="142px" Width="236px"></asp:Image>
                     <br>
                     <asp:Label ID="Label2" runat="server" ></asp:Label>
                     
                     
                    </div>                 
                 
                   <br>
             
                        <asp:FileUpload ID="FileUpload1" runat="server" />

                        
                      
                     <asp:Button ID="Button4" runat="server" Text="Upload Image" OnClick="Button4_Click1" />
                        
                     
                    </div>                 
                 
                 </div>


                 <br><br>
                 
                 
                 <div class="row">
                 <div class="col-md-6">
                  

                    <div class="form-group">
                        <asp:Button class="btn btn-primary btn-lg"
                            ID="Button2" runat="server" Text="Update" onclick="Button2_Click" />
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                           
                    </div>
                     </div>

                      <div class="col-md-6">
                      <div class="form-group">
                        <asp:Button class="btn btn-danger btn-lg" 
                            ID="Button3" runat="server" Text="Delete " onclick="Button3_Click" />
                        <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
                           
                    </div>
                     </div>
                  

                 </div>
                 </div>
              


                   

                 

              

             </div>
         </div>
         </div>
         


         


         <div class= "col-md-8 ">
         <div class="card">
         
         <div class="card-header">Subscription List</div>
  <div class="card-body">


   

  
         
          <div class="row">
  <div class="col">
         
                       <center>
            
                 <asp:GridView ID="myTable" class="table datatable table-striped  table-bordered " runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                     <Columns>
                        
                         <asp:BoundField DataField="id" HeaderText="Subscription_ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                      
                        
                     
                     
                         <asp:TemplateField>


                             <ItemTemplate>
                                 <div class="container-fluid">
                                     <div class="row">
                                         <div class="col-lg-10">
                                             <br />
                                             <div class="row">
                                                 <div class="col-10">
                                                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("SubscriptionType") %>' Font-Bold="True" ForeColor="#FF9900"></asp:Label>
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
                                                   
                                                 <div class="col">
                                                     Price&nbsp;
                                                     <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" ForeColor="#FF9900"></asp:Label>
                                                     -/RS</div>
                                                
                                             </div>

                                         </div>
                                         <div class="col-lg-2">
                                             <br/><a href='<%# Eval("image") %>' class="gallery-lightbox">
                                             <asp:Image Class="img-fluid" alt="" ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
                                            </a> <br/>
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

                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TiffinGOConnectionString %>" SelectCommand="SELECT * FROM [subscription]"></asp:SqlDataSource>

             </center>  





                        
       
    </div>
         </div>                     
         </div>
         </div>
         </div>
                        

         
         </div>
         </div>
    </section>




</asp:Content>
