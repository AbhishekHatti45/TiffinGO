<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" EnableEventValidation = false AutoEventWireup="true" CodeBehind="AddSubscription.aspx.cs" Inherits="TiffinGO.AddSubscription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
  <div class="card-header container-fluid card text-dark bg-light">Add Subscriptions
      </div>
          

           <div class="row">
           <div class="col-md-6 mx-auto">
           


      <br />
  
         
         
        <center> <div class="card-header container-fluid card  ">Subscription Details</div></center>
         
  <div class="card-body ">
         
        

                   

    
      <br />
                  
                 <div class="row">
                 <div class="col-12">
                    <label>Subscription Name</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" 
                            placeholder="Subscription Name" ></asp:TextBox>
                      
                    </div>
                 </div>
                 </div>
      <br />
                 <div class="row">
                  <div class="col-md-6">
                   <label>Subscription Category</label>
                    <div class="form-group">
                       
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                              <asp:ListItem>Select</asp:ListItem>
                              <asp:ListItem>veg</asp:ListItem>
                              <asp:ListItem>nonveg</asp:ListItem>
         
                           
                        </asp:DropDownList>
                    </div>                 
                 
                 </div>
                 
                 <div class="col-md-6">
                 <label>Subscription Price</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox4" runat="server" 
                            placeholder="Product Price"  ></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer"  ErrorMessage="Price needs to be whole Number" ControlToValidate="Textbox4"></asp:CompareValidator>
                       
                    

                    </div>  


                 </div>
                 
                 </div>

                 
                  <div class="row">
                 <div class="col-md-6">
                   <label>Add Image</label>
                    <div class="form-group">
                     <asp:Image ID="Image2" runat="server" Height="142px" Width="236px"></asp:Image>
                     <br>
                     <asp:Label ID="Label2" runat="server" ></asp:Label>
                     
                     
                    </div>                 
                 </div>



                 
                 <div class="col-md-6">
                   <br>
                   <br>
                        <asp:FileUpload ID="FileUpload1" runat="server" />

                        <br>
                        <br>
                        <br>
                       
                     <asp:Button ID="Button1" runat="server" Text="Upload Image" OnClick="Button1_Click" />
                        
                     
                    </div>                 
                 
                 </div>
      <br />

                  <div class="row">
                 <div class="col-12">
                    <label>Subscription Description</label>
                    <div class="form-group">

                        <asp:TextBox CssClass="form-control" ID="Textbox3" runat="server" 
                            placeholder="Product Description"  TextMode="MultiLine"></asp:TextBox>
                          
                    </div>
                 </div>
                 </div>
               


                 

                 
                <br />
                
                 
                 
                 <div class="row">
                 <div class="col-md-6 mx-auto">
                     
                  
                     
                    <div class="form-group">
                      <center> <div class="card-header container-fluid card "> <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Add Subscription</asp:LinkButton></div></center>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                           
                    </div>
                     </div>

                      
                  <hr />

                 </div>
                 </div>
             
        
                 





</div>
</div>
</div>

    
</asp:Content>
