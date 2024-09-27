<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="de1.Detail" %>

<%@ Register Src="~/UserControl/ucCourseDetail.ascx" TagPrefix="uc1" TagName="ucCourseDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucCourseDetail runat="server" id="ucCourseDetail" />
</asp:Content>
