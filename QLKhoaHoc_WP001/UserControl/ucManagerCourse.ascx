<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManagerCourse.ascx.cs" Inherits="de1.UserControl.ucManagerCourse" %>
<table style="width: 100%;">
    <tr>
        <td>Course name:</td>
        <td>
            <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Duration</td>
        <td>
            <asp:TextBox ID="TextBoxDuration" runat="server"></asp:TextBox></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Category</td>
        <td>
            <asp:DropDownList ID="DropDownListCategory" runat="server"></asp:DropDownList></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Description</td>
        <td>
            <asp:TextBox ID="TextBoxDescription" TextMode="MultiLine" runat="server"></asp:TextBox></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Picture</td>
        <td>
            <asp:FileUpload ID="FileUploadPicture" runat="server" /></td>
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="ButtonAddNew" runat="server" Text="Add new" OnClick="ButtonAddNew_Click" /></td>
    </tr>
</table>

<hr />
<asp:GridView ID="GridViewCourses" AllowPaging="true" PageSize="5" AutoGenerateColumns="false" runat="server" OnPageIndexChanging="GridViewCourse_PageIndexChanging" DataKeyNames="id">
    <Columns>
        <asp:TemplateField HeaderText="No.">
            <ItemTemplate>
                <%# Container.DataItemIndex+1 %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Picture">
            <ItemTemplate>
                <asp:Image runat="server" ID="imageCourse" ImageUrl='<%# "~/images/Courses/" + Eval("ImageFilePath") %>' Width="100px" Height="100px" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" Text='<%# Eval("Name")%>' Target="_blank" runat="server" NavigateUrl='<%# "~/Details.aspx?id="+Eval("ID") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button runat="server" OnClientClick="return confirm('Do you really want to delete this course?');" ID="DeleteButton" Text="Delete" CommandName="DeleteCourse" CommandArgument='<%# Eval("ID") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="EditCourse" CommandArgument='<%# Eval("ID") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
