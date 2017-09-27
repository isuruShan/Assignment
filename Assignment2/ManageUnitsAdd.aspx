<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ManageUnitsAdd.aspx.cs" Inherits="Assignment2.ManageUnitsAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container">
      <h2>Vertical (basic) form</h2>
      <form id="form1" runat="server">
        <div class="form-group">
          <label for="txtUnitCode">Unit Code:</label>
          <asp:TextBox ID="txtUnitCode" placeholder="C1203" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="txtUnitTitle">Unit Title:</label>
          <asp:TextBox ID="txtUnitTitle" placeholder="C1203" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="txtUnitCoordinator">Unit Coordinator:</label>
          <asp:TextBox ID="txtUnitCoordinator" placeholder="C1203" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
          <label for="txtUnit_outline_pdf_document">Unit Outline Document:</label>
          <asp:FileUpload ID="txtUnit_outline_pdf_document" runat="server" class="form-control />
        </div>
       
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
    </div>
</asp:Content>
