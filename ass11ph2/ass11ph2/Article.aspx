<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Article.aspx.cs" Inherits="ass11ph2.Article" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Article</h2>
<table class="w-100">
    <tr>
        <td>
            <asp:GridView ID="gvArticle" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ArticleId" DataSourceID="SqlDataSource1" GridLines="Vertical" AllowPaging="True" AllowSorting="True">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="ArticleId" HeaderText="ArticleId" ReadOnly="True" SortExpression="ArticleId" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
                    <asp:BoundField DataField="PublishDate" HeaderText="PublishDate" SortExpression="PublishDate" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ContentDbConnectionString %>" DeleteCommand="DELETE FROM [Articles] WHERE [ArticleId] = @original_ArticleId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))" InsertCommand="INSERT INTO [Articles] ([ArticleId], [Title], [Content], [PublishDate]) VALUES (@ArticleId, @Title, @Content, @PublishDate)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ContentDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Articles]" UpdateCommand="UPDATE [Articles] SET [Title] = @Title, [Content] = @Content, [PublishDate] = @PublishDate WHERE [ArticleId] = @original_ArticleId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ArticleId" Type="Int32" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Content" Type="String" />
                    <asp:Parameter Name="original_PublishDate" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ArticleId" Type="Int32" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Content" Type="String" />
                    <asp:Parameter Name="PublishDate" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Content" Type="String" />
                    <asp:Parameter Name="PublishDate" Type="DateTime" />
                    <asp:Parameter Name="original_ArticleId" Type="Int32" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Content" Type="String" />
                    <asp:Parameter Name="original_PublishDate" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
