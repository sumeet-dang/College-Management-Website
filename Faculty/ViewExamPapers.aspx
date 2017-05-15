<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontFaculty.master" AutoEventWireup="true" CodeFile="ViewExamPapers.aspx.cs" Inherits="Faculty_ViewExamPapers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="QuestionId" DataSourceID="QuestionSource" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">     
            <EditItemTemplate>
                 <asp:Image ID="Image1" runat="server" Imageurl='<%# "~/Handlers/ShowQuestionImage.ashx?Qimage="+ Eval("QuestionId")  %>' />
                    <br /> 
                <li style="">
                    QuestionId:
                    <asp:Label ID="QuestionIdLabel1" runat="server" Text='<%# Eval("QuestionId") %>' Enabled="False" />
                    <br />
                    QuestionStatement:<br />
                    <asp:TextBox ID="QuestionStatementTextBox" runat="server" Text='<%# Bind("QuestionStatement") %>' Height="100px" Width="500px" TextMode="MultiLine" />
                    <br />
                    Option1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Option1TextBox" runat="server" Text='<%# Bind("Option1") %>' />
                    <br />
                    Option2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Option2TextBox" runat="server" Text='<%# Bind("Option2") %>' />
                    <br />
                    Option3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Option3TextBox" runat="server" Text='<%# Bind("Option3") %>' />
                    <br />
                    Option4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Option4TextBox" runat="server" Text='<%# Bind("Option4") %>' />
                    <br />
                    CorrectOption:
                    <asp:TextBox ID="CorrectOptionTextBox" runat="server" Text='<%# Bind("CorrectOption") %>' />
                    <br />
                    Choose new Question Image:<br />
                    <asp:FileUpload ID="FileUpload2" runat="server" BorderColor="Black" BackColor="#CCFFCC" BorderWidth="1px" />
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Choose Valid File" Display="Dynamic"></asp:CustomValidator>
                    <br />                    
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>                                    
            <InsertItemTemplate>
                <li style="" />
                   
                QuestionStatement:<br />
                <asp:TextBox ID="QuestionStatementTextBox" runat="server" Text='<%# Bind("QuestionStatement") %>' Height="100px" TextMode="MultiLine" Width="500px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a Question" ControlToValidate="QuestionStatementTextBox" Display="Dynamic" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                <br />
                Option1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Option1TextBox" runat="server" Text='<%# Bind("Option1") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Option 1" ControlToValidate="Option1TextBox" Display="Dynamic" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                <br />
                Option2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Option2TextBox" runat="server" Text='<%# Bind("Option2") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Option 2" ControlToValidate="Option2TextBox" Display="Dynamic" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                <br />
                Option3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Option3TextBox" runat="server" Text='<%# Bind("Option3") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Option 3" ControlToValidate="Option3TextBox" Display="Dynamic" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                <br />
                Option4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Option4TextBox" runat="server" Text='<%# Bind("Option4") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Option 4" ControlToValidate="Option4TextBox" Display="Dynamic" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                <br />
                CorrectOption:
                <asp:TextBox ID="CorrectOptionTextBox" runat="server" Text='<%# Bind("CorrectOption") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Option 4" ControlToValidate="CorrectOptionTextBox" Display="Dynamic" ValidationGroup="InsertGroup"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Option must be between 1 to 4" ControlToValidate="CorrectOptionTextBox" Display="Dynamic" MinimumValue="1" MaximumValue="4" ValidationGroup="InsertGroup"></asp:RangeValidator>
                <br />
                Attach An Image To Question:(use jpg or gif formats only)<br />
                <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Black" BackColor="#99FFCC" BorderWidth="1px" />
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Incorrect Image Format" Display="Dynamic"></asp:CustomValidator>
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="InsertGroup" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </InsertItemTemplate>            
            <ItemTemplate>
                 <asp:Image ID="Image1" runat="server" Imageurl='<%# "~/Handlers/ShowQuestionImage.ashx?Qimage="+ Eval("QuestionId")  %>' />
                    <br />                    
                <li style="">                     
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
                    <asp:Button ID="Button1" runat="server" CommandName="Edit" Text="Edit" CausesValidation="False" />
                     <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CausesValidation="False" />
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
            <ItemSeparatorTemplate>
                <br />
                <br />
                <br />
                
            </ItemSeparatorTemplate>          
        </asp:ListView>
        <asp:EntityDataSource ID="QuestionSource" runat="server" ConnectionString="name=collegeEntities" DefaultContainerName="collegeEntities" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="AptiQuestions" EnableDelete="True" OnInserted="QuestionSource_Inserted" OnUpdating="QuestionSource_Updating">
        </asp:EntityDataSource>    
</asp:Content>

