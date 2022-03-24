<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddingClinc.aspx.cs" Inherits="DoctorDiary.AddingClinc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div style="background-color:#638faf" class="Container">
         <asp:TextBox runat="server" ID="ClinicName" class="form-control" placeholder="הקלד את שם המרפאה" /><br />
         <asp:TextBox runat="server" ID="ClinicAdd" class="form-control" placeholder="הקלד את כתובת המרפאה" /><br />
         <asp:TextBox runat="server" ID="ClnicCity" class="form-control" placeholder="הקלד את עיר המרפאה" /><br />
         <asp:TextBox runat="server" ID="ClincOPH" class="form-control" placeholder="הקלד את שעות הפתיחה" /><br />
         
         <label> תרצה להוסיף עוד מרפאה?</label>
            <asp:CheckBox runat="server" ID="Run"  /><br />
         <asp:Button runat="server" ID="ClinicSub" OnClick="ClinicSub_Click" text="הוספת מרפאה"/>
     </div>
</asp:Content>
