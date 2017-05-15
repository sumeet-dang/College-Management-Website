<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontFaculty.master" AutoEventWireup="true" CodeFile="VerbalPaper.aspx.cs" Inherits="Faculty_ExamQuestions_VerbalPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:ListView ID="ListView2" runat="server" DataKeyNames="QuestionId" DataSourceID="EntityDataSource1" InsertItemPosition="LastItem" OnItemCommand="ListView2_ItemCommand">
        
        <EditItemTemplate>
            <li style="">              
                QuestionStatement:<br />
                <asp:TextBox ID="QuestionStatementTextBox" runat="server" Text='<%# Bind("QuestionStatement") %>' TextMode="MultiLine" Width="500px" Height="100px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Question Cannot Be Blank" ControlToValidate="QuestionStatementTextBox" Display="Dynamic" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
                <br />
                Option1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Option1TextBox" runat="server" Text='<%# Bind("Option1") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Option" ControlToValidate="Option1TextBox" Display="Dynamic" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
                <br />
                Option2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Option2TextBox" runat="server" Text='<%# Bind("Option2") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Option" Display="Dynamic" ControlToValidate="Option2TextBox" ValidationGroup="EditGroup" ></asp:RequiredFieldValidator>
                <br />
                Option3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Option3TextBox" runat="server" Text='<%# Bind("Option3") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Option" Display="Dynamic" ControlToValidate="Option3TextBox" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
                <br />
                Option4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Option4TextBox" runat="server" Text='<%# Bind("Option4") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Option" Display="Dynamic" ControlToValidate="Option4TextBox" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
                <br />
                CorrectOption:
                <asp:TextBox ID="CorrectOptionTextBox" runat="server" Text='<%# Bind("CorrectOption") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Option Number" ControlToValidate="CorrectOptionTextBox" Display="Dynamic" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="CorrectOptionTextBox" ErrorMessage="Invalid Option" MaximumValue="4" MinimumValue="1" Type="Integer" Display="Dynamic" ValidationGroup="EditGroup"></asp:RangeValidator>
                <br />             
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </li>
        </EditItemTemplate>        
        <InsertItemTemplate>
            <li style="">
                Enter Question:<br />
                <asp:TextBox ID="QuestionStatementTextBox" runat="server" Text='<%# Bind("QuestionStatement") %>' TextMode="MultiLine" Width="500px" Height="100px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Question Cannot Be Blank" ControlToValidate="QuestionStatementTextBox" Display="Dynamic" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                <br />Option1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Option1TextBox" runat="server" Text='<%# Bind("Option1") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Option" ControlToValidate="Option1TextBox" Display="Dynamic" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                <br />Option2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Option2TextBox" runat="server" Text='<%# Bind("Option2") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Option" Display="Dynamic" ControlToValidate="Option2TextBox" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                <br />Option3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Option3TextBox" runat="server" Text='<%# Bind("Option3") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Option" Display="Dynamic" ControlToValidate="Option3TextBox" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                <br />Option4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Option4TextBox" runat="server" Text='<%# Bind("Option4") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Option" Display="Dynamic" ControlToValidate="Option4TextBox" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                <br />CorrectOption:
                <asp:TextBox ID="CorrectOptionTextBox" runat="server" Text='<%# Bind("CorrectOption") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Option Number" ControlToValidate="CorrectOptionTextBox" Display="Dynamic" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="CorrectOptionTextBox" ErrorMessage="Invalid Option" MaximumValue="4" MinimumValue="1" Type="Integer" Display="Dynamic" ValidationGroup="InsertGroup"></asp:RangeValidator>
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
           
            <li style="">
                 QuestionId:
                <asp:Label ID="QuestionIdLabel" runat="server" Text='<%# Eval("QuestionId") %>' />
                <br />
                QuestionStatement:<br />
                <asp:Label ID="QuestionStatementLabel" runat="server" Text='<%# Eval("QuestionStatement") %>' />
                <br />
                Option1:
                <asp:Label ID="Option1Label" runat="server" Text='<%# Eval("Option1") %>' />
                <br />
                Option2:
                <asp:Label ID="Option2Label" runat="server" Text='<%# Eval("Option2") %>' />
                <br />
                Option3:
                <asp:Label ID="Option3Label" runat="server" Text='<%# Eval("Option3") %>' />
                <br />
                Option4:
                <asp:Label ID="Option4Label" runat="server" Text='<%# Eval("Option4") %>' />
                <br />
                CorrectOption:
                <asp:Label ID="CorrectOptionLabel" runat="server" Text='<%# Eval("CorrectOption") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="2">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        
    </asp:ListView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=collegeEntities1" DefaultContainerName="collegeEntities1" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="VerbalQuestions">
    </asp:EntityDataSource>
</asp:Content>

