<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Semester.aspx.cs" Inherits="studentmodule.Semester" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >
    <!--<html>
        <style>
            .box{
                
                color:black;
                font-size:30px;
                
            }
           
            
        </style>
	<center>-->

       <center> <table  style=" height:370px; width: 268px; border:5px double white;margin:12px 12px 12px 12px;" class="table table-hover">
            <col  style="width:40% "/>
		<tr class="table-success"   >
			<td  class="box" style="width:300px;height:60px;font-size:large;  ">

			<center><asp:LinkButton ID="LinkButton1" class="text-primary" runat="server" PostBackUrl="~/Subjects.aspx?id=1">SEMESTER 1</asp:LinkButton></center>
                 
			</td>
            
		</tr>
		<tr class="table-warning">
			<td class="box" style="width:100%;height:40px;font-size:large;">

				<center><asp:LinkButton ID="LinkButton2" class="text-primary" runat="server" PostBackUrl="~/Subjects.aspx?id=2">SEMESTER 2</asp:LinkButton></center>

			</td>
		</tr>
		<tr class="table-success">
			<td class="box" style="width: 100%;height:60px;font-size:large;">

				<center><asp:LinkButton ID="LinkButton3" class="text-primary" runat="server" PostBackUrl="~/Subjects.aspx?id=3" OnClick="LinkButton3_Click">SEMESTER 3</asp:LinkButton></center>

			</td>
		</tr>
		<tr class="table-warning">
			<td class="box" style="width:100%;height:60px;font-size:large;">

				<center><asp:LinkButton ID="LinkButton4" class="text-primary" runat="server" PostBackUrl="~/Subjects.aspx?id=4">SEMESTER 4</asp:LinkButton></center>

			</td>
		</tr>
		<tr class="table-success">
			<td class="box" style="width: 100%;height:60px;font-size:large;">
		

				<center><asp:LinkButton ID="LinkButton5" class="text-primary" runat="server" PostBackUrl="~/Subjects.aspx?id=5">SEMESTER 5</asp:LinkButton></center>

			</td>
            </tr>
		<tr class="table-warning">
			<td class="box" style="width: 100%;height:60px;font-size:large;">

				<center><asp:LinkButton ID="LinkButton6" class="text-primary" runat="server" PostBackUrl="~/Subjects.aspx?id=6">SEMESTER 6</asp:LinkButton></center>

			</td>
		</tr>
		<tr class="table-success">
			<td class="box" style="width: 100%;height:60px;font-size:large;">

				<center><asp:LinkButton ID="LinkButton7" class="text-primary" runat="server" PostBackUrl="~/Subjects.aspx?id=7">SEMESTER 7</asp:LinkButton></center>

			</td>
		</tr>
		<tr class="table-warning">
			<td class="box" style="height:60px ; width: 100%;font-size:large;">

				<center><asp:LinkButton ID="LinkButton8" class="text-primary" runat="server" PostBackUrl="~/Subjects.aspx?id=8">SEMESTER 8</asp:LinkButton></center>

			</td>
	</table></center>
    <!--</center>
    </html>-->
</asp:Content>
