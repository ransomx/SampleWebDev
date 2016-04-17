<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SiteSample.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    window.scrollTo = function( x,y ) 
    {
        return true;
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMain" runat="server">
    
    <div class="wrapper">
        <asp:Button ID="BtnSignUp" runat="server" CausesValidation="false" PostBackUrl="#Form" CssClass="button" Text="Signa upp mig för betan" />
        <h2>Bryggan mellan dig och kunden
        </h2>
        <p class="smallText">
            Med den första produkten vi släpper har vi som mål att du ska slippa telefonsamtal,
                möten och långa mailtrådar med kunder om saknade underlag. Inte heller ska du behöva
                påminna om viktiga datum eller matcha underlag med banktransaktioner.
        </p>

        <article>
            <asp:Table ID="TableMain" runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="left">
                        <asp:Image ID="Image1" Width="40px" runat="server" ImageUrl="images/checkbox.png" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="right">
                    <h3>Frihet och tillgänglighet </h3>
                    <p class="smallText"> Sitta på sölderhavsö och jobba från mobilen? Inga problem, Dooer är nämligen molnbaserat
                        och plattformsoberoende. Det betyder att du kommer åt informationen var och när som helst, från dator,
                        mobil eller lästplatta.
                    </p>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="left">
                        <asp:Image ID="Image2" Width="40px" runat="server" ImageUrl="images/checkbox.png" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="right">
                            <h3>
                                Samlad och sökbar infromation
                            </h3>
                            <p class="smallText">
                                Med Dooer får du alla dokument och transaktioner samlade på ett och samma ställe. Dessutom är systemet sökbar
                                och lättöverskådligt, så du snabbt hittar det dokument du letar efter.
                            </p>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="left">
                        <asp:Image ID="Image3" Width="40px" runat="server" ImageUrl="images/checkbox.png" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="right">
                    <h3>Frihet och tillgänglighet </h3>
                    <p class="smallText"> Sitta på sölderhavsö och jobba från mobilen? Inga problem, Dooer är nämligen molnbaserat
                        och plattformsoberoende. Det betyder att du kommer åt informationen var och när som helst, från dator,
                        mobil eller lästplatta.
                    </p>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="left">
                        <asp:Image ID="Image4" Width="40px" runat="server" ImageUrl="images/checkbox.png" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="right">
                            <h3>Frihet och tillgänglighet </h3>
                            <p class="smallText"> Sitta på sölderhavsö och jobba från mobilen? Inga problem, Dooer är nämligen molnbaserat
                                och plattformsoberoende. Det betyder att du kommer åt informationen var och när som helst, från dator,
                                mobil eller lästplatta.
                            </p>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </article>

        <h2 class="biggerH2">Tillsammans formar vi framtidens
            bokföringsvektryg
        </h2>
        <p class="smallText">
            Signa upp dig för att testa vår nya plattform och följa med på resan 
        </p>

        <div id="Form" class="form">
            <div class="row">
                <div class="leftCell">
                    Mitt namn*
                        <asp:TextBox ID="TxtNamn" runat="server" CssClass="textBox" Text="" />
                        <asp:RequiredFieldValidator ID="ReqVal1" runat="server" ErrorMessage="Enter your name" ControlToValidate="TxtNamn" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegexNamn" runat="server" ErrorMessage="Only letters and spaces are allowed" ValidationExpression="\D+" Display="None" ControlToValidate="TxtNamn"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row">
                <div class="leftCell">
                    Min titel*
                        <asp:TextBox ID="TxtTitel" runat="server" CssClass="textBox" Text="" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your title" ControlToValidate="TxtTitel" Display="None"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegexTitel" runat="server" ErrorMessage="Only letters and spaces are allowed" ValidationExpression="\D*" Display="None" ControlToValidate="TxtTitel"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row">
                <div class="leftCell">
                    Min email*
                        <asp:TextBox ID="TxtEmail" runat="server" CssClass="textBox" Text="" />
                        <asp:RequiredFieldValidator ID="ReqVal3" runat="server" ErrorMessage="Enter your email address" ControlToValidate="TxtEmail" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegexEmail" runat="server" ErrorMessage="Allowed email format: name@domain.xx" Display="None" ValidationExpression="^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$" ControlToValidate="TxtEmail"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row">
                <div class="leftCell">
                    Företagsnamn*
                        <asp:TextBox ID="TxtForegtagsnamn" runat="server" CssClass="textBox" Text="" />
                        <asp:RequiredFieldValidator ID="ReqVal4" runat="server" ErrorMessage="Enter your company name" ControlToValidate="TxtForegtagsnamn" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>
            <asp:ValidationSummary ID="ValidationSummary1"  runat="server" CssClass="validation" />
        </div>
        <asp:Button ID="BtnConfirm" runat="server" CssClass="button2" PostBackUrl="#BtnConfirm"  CausesValidation="true" Text="Jag är intresserad av att bli partner" OnClick="BtnConfirm_Click" />
    </div>
</asp:Content>
