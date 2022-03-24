<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddingDoc.aspx.cs" Inherits="DoctorDiary.AddingDoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div style="background-color:#638faf" class="Container">
       <div class="col order-1">
        
          <asp:TextBox runat="server" ID="DocID" class="form-control" placeholder="אנא הקלד את מספר תעודת הזהות"/><br />
              <asp:TextBox runat="server" ID="DocFname" class="form-control" placeholder="אנא הקלד שם פרטי"/><br />
              <asp:TextBox runat="server" ID="DocLname" class="form-control" placeholder="אנא הקלד שם משפחה"/><br />
              <asp:TextBox runat="server" ID="DocPhone" class="form-control" placeholder="מספר הטלפון בצורה הזו 050-123-4567"/><br />
              <asp:TextBox runat="server" ID="DocEmail" class="form-control" placeholder="example@domain.com"/><br />
              <asp:TextBox runat="server" ID="DocPass" class="form-control" placeholder="אנא בחר סיסמא -לפחות 6 תווים"/><br />
              
              <asp:Button runat="server" ID="Sub" Class="btn" Text="להגשת הפרטים" OnClick="Sub_Click"/>
       </div>
       
   </div>
<asp:FormView runat="server" ID="Form">
 


</asp:FormView>
</asp:Content>
