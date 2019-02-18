    
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
    CreateUserButtonText="" CreateUserButtonType="Link">
            <WizardSteps>
                
                <asp:CreateUserWizardStep>
                <ContentTemplate>
                <asp:Label ID="ErrorMessage" ForeColor="Red" Runat="server"/>
                <asp:Label ID="lblusername" Text="Username" runat="server"></asp:Label>
                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UserName" runat="server" 
        ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
               <asp:Label ID="lblpassword" Text="Password" runat="server"></asp:Label>
                <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Password" runat="server" 
        ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
               <asp:Label ID="lblpassword1" Text="Repeat Password" runat="server"></asp:Label>
                <asp:TextBox ID="ConfirmPassword" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="ConfirmPassword" ControlToCompare="Password" ErrorMessage="CompareValidator"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="ConfirmPassword" runat="server" 
        ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
              <asp:Label ID="lblemail" Text="Email:" runat="server"></asp:Label>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="Email" runat="server" 
        ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                <asp:Label ID="lblmobile" Text="Phone No" runat="server"></asp:Label>
                <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
              <asp:Button ID="createuser" Text="Register" runat="server" CommandName="CreateUser" 
                        onclick="createuser_Click" />
                
                
                </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                You Registered Successfully
                </ContentTemplate>
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
</asp:Content>
