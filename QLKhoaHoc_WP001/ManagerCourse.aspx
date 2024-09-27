<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="ManagerCourse.aspx.cs" Inherits="de1.ManagerCourse" %>

<%@ Register Src="~/UserControl/ucManagerCourse.ascx" TagPrefix="uc1" TagName="ucManagerCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucManagerCourse runat="server" id="ucManagerCourse" />
</asp:Content>
