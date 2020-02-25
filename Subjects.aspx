<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="studentmodule.Subjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<center><table style="height:370px; width: 268px; border:5px double White; font-size:20px" class="table table-hover">
		<tr class="table-primary">
			<td style="height: 46px">
				<center><asp:LinkButton ID="Subject1"  class="text-primary" runat="server"></asp:LinkButton></td></tr>
        <tr class="table-secondary">
				<td style="height: 46px">
				<center><asp:LinkButton ID="Subject2"  class="text-primary" runat="server"></asp:LinkButton></td></tr>
			   
		<tr class="table-primary">
			<td style="height: 46px">
				<center><asp:LinkButton ID="Subject3"  class="text-primary" runat="server"></asp:LinkButton></center>
			</td>
		</tr>
		<tr class="table-secondary">
			<td style="height: 46px">
				<center ><asp:LinkButton ID="Subject4"  class="text-primary" runat="server"></asp:LinkButton></center>
			</td>
		</tr>
		<tr class="table-primary">
			<td style="height: 46px">
				<center><asp:LinkButton ID="Subject5"  class="text-primary" runat="server"></asp:LinkButton></center>
			</td>
		</tr>
		<tr class="table-secondary">
			<td style="height: 46px">
				<center><asp:LinkButton ID="Subject6"  class="text-primary" runat="server"></asp:LinkButton></center>
			</td>
		</tr>
	</table></center>


	<!--<table>
		<tr>
			<td>

				<asp:Repeater ID="Repeater1" runat="server">
					<HeaderTemplate>
						<table cellspacing="0" rules="all" border="1">
							<tr>
								<th scope="col" style="width: 80px">Customer Id
								</th>
								<th scope="col" style="width: 120px">Customer Name
								</th>
								<th scope="col" style="width: 100px">Country
								</th>
							</tr>
					</HeaderTemplate>
					<ItemTemplate>
						<tr>
							<td>
								<asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("sub_name") %>' />
							</td>
							<td>
								<asp:Label ID="lblContactName" runat="server" Text='<%# Eval("sub_name") %>' />
							</td>
							<td>
								<asp:Label ID="lblCountry" runat="server" Text='<%# Eval("sub_name") %>' />
							</td>
						</tr>
					</ItemTemplate>
					<FooterTemplate>
						</table>
					</FooterTemplate>
				</asp:Repeater>

			    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CC9900">
                    <Columns>
                        <asp:BoundField DataField="sub_name" HeaderText="Customer ID" />
                    </Columns>
                </asp:GridView>

			</td>
		</tr>
	</table>-->


</asp:Content>
