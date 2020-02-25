<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notes.aspx.cs" Inherits="studentmodule.Notes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Styleregister.css" rel="stylesheet" />

    <table>
        <tr>
            <td style="width: 342px">
                <h1 style="color:black ; font-size:40px">NOTES</h1>
                <asp:GridView ID="ModuleGrid" runat="server" AutoGenerateColumns="False" OnRowCommand="ModuleGrid_RowCommand" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="1081px" OnRowDataBound="ModuleGrid_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                         <asp:BoundField DataField="notes_id" HeaderText="Notes Id" />
                        <asp:BoundField DataField="sub_id" HeaderText="Id" />
                        <asp:BoundField DataField="name" HeaderText="Teacher Name" />
                        <asp:BoundField DataField="module" HeaderText="Module" />
                        <asp:BoundField DataField="filename" HeaderText="File Name" />
                        <asp:ButtonField Text="Upload" CommandName="Upload"/>
                        <asp:ButtonField Text="Download" CommandName="Download" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>

            </td>
        </tr>
    </table>
    <asp:FileUpload runat="server" ID="fuSample" CssClass="btnsubmit" Height="56px" style="margin-top: 59px" Width="378px" />
    <asp:Label runat="server" ID="lblMessage" CssClass="btnsubmit" Text=""></asp:Label>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="act" runat="server" OnClick="Button1_Click" CssClass="btnsubmit" Text="ACTIVITY" Width="91px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="link" runat="server" OnClick="link_Click1" CssClass="btnsubmit" Text="Reference Links" Width="126px" />
    <br />
    <br />
  <br />
    <h2 style="color:black;"> QUESTION PAPERS</h2>
   <asp:GridView ID="GrdQuestionPaper" runat="server" AutoGenerateColumns="False"  BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="1081px" OnRowCommand="GrdQuestionPaper_RowCommand" OnRowDataBound="GrdQuestionPaper_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        
                        <asp:BoundField DataField="qp_id" HeaderText="Question ID" />
                        <asp:BoundField DataField="filename" HeaderText="File Name" />
                        <asp:ButtonField Text="Upload" CommandName="Upload"/>
                        <asp:ButtonField Text="Download" CommandName="Download" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
    <br />

    <asp:FileUpload runat="server" ID="fileuploadQuestionPaper" CssClass="btnsubmit" Height="56px" style="margin-top: 59px" Width="378px" />
    <asp:Label runat="server"  CssClass="btnsubmit" ID="Label1" Text=""></asp:Label>
</asp:Content>

