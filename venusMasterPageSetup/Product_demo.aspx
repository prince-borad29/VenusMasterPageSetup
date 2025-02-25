<%@ Page Title="" Language="C#" MasterPageFile="~/venusMasterSetup.Master" AutoEventWireup="true" CodeBehind="Product_demo.aspx.cs" Inherits="venusMasterPageSetup.Product_demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start Contact Form -->
    <div class="untree_co-section">
        <div class="container">

            <div class="block">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-8 pb-4">

                        <div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label class="text-black" for="txtproductname">Product name</label>
                                        <asp:TextBox ID="txtproductname" class="form-control" runat="server" Width="415" Height="50"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label class="text-black" for="txtcode">Product Code</label>
                                        <asp:TextBox ID="txtcode" class="form-control" runat="server" Width="415" Height="50"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="form-group">
                                    <label class="text-black" for="rbsalemode">Sale Mode</label>
                                    <asp:RadioButtonList ID="rbsalemode" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem>WholeSale</asp:ListItem>
                                        <asp:ListItem>Retail</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>

                            <div class="form-group mb-2">
                                <label class="text-black" for="txtqty">Product Quantity</label>
                                <asp:TextBox ID="txtqty" class="form-control" TextMode="Number" runat="server" Width="855"></asp:TextBox>
                            </div>

                            <div class="col-3">
                                <div class="form-group mb-2">
                                    <label class="text-black" for="chktype">Product Type</label>
                                    <asp:CheckBoxList ID="chktype" runat="server" RepeatDirection="Horizontal" Font-Size="Medium">
                                        <asp:ListItem>Food</asp:ListItem>
                                        <asp:ListItem>Goods</asp:ListItem>
                                        <asp:ListItem>Device</asp:ListItem>
                                    </asp:CheckBoxList>
                                </div>
                            </div>
                            <div class="col-9">
                                <div class="form-group mb-2">
                                    <label class="text-black" for="ddlheadquarter">Headqurater</label>
                                    <asp:DropDownList ID="ddlheadquarter" class="form-control" runat="server">
                                        <asp:ListItem>Rajkot</asp:ListItem>
                                        <asp:ListItem>Ahemdabad</asp:ListItem>
                                        <asp:ListItem>Jamnagar</asp:ListItem>
                                        <asp:ListItem>junagadh</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group mb-2">
                                <label class="text-black" for="fldimg">Product Quantity</label>
                                <asp:FileUpload ID="fldimg" runat="server" CssClass="form-control" />
                            </div>

                            <asp:Button ID="BtnSubmit" class="btn btn-primary-hover-outline"  runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                                <Columns>
                                    <asp:TemplateField HeaderText="Id">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Code">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Code") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Sale Mode">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Sale_Mode") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Qty">
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Qty") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Food">
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Food") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Goods">
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Goods") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Device">
                                        <ItemTemplate>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Device") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Headquarter">
                                        <ItemTemplate>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Headquarter") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Image">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Width="80" Height="80" ImageUrl='<%# Eval("Image") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Update">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_update">Update</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_delete">Delete</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
