<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SiteSample.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sample site</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="logo">fitnasia</div>
            <asp:Menu ID="MenuHeader" runat="server" CssClass="menuHeader" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="JOBB" Value="JOBB"></asp:MenuItem>
                    <asp:MenuItem Text="FAQ" Value="FAQ"></asp:MenuItem>
                </Items>
            </asp:Menu>

            <h1>Forma framtidens
                bokföringverktyg
            </h1>

            <div class="appendix">
                Vi på Dooer vill tillsammans med dig bygga produkter som hjälper hela bokföringsbranschen - alltså dig.
                Signa upp dig på vår betalista för att bli en av de första som får tillgång till vår nya plattform, och var med och forma
                framtidens bokföringsverktyg!
            </div>
        </header>

        <div class="wrapper">
            <asp:Button ID="BtnSignUp" runat="server" CssClass="button" Text="Signa upp mig för betan" />
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

            <div class="form">
                <div class="row">
                    <div class="leftCell">
                        Mitt namn*
                        <asp:TextBox ID="TxtNamn" runat="server" CssClass="textBox" Text="" />
                    </div>
                </div>
                <div class="row">
                    <div class="leftCell">
                        Min titel*
                        <asp:TextBox ID="TxtTitel" runat="server" CssClass="textBox" Text="" />
                    </div>
                </div>
                <div class="row">
                    <div class="leftCell">
                        Min email*
                        <asp:TextBox ID="TxtEmail" runat="server" CssClass="textBox" Text="" />
                    </div>
                </div>
                <div class="row">
                    <div class="leftCell">
                        Företagsnamn*
                        <asp:TextBox ID="TxtForegtagsnamn" runat="server" CssClass="textBox" Text="" />
                    </div>
                </div>
            </div>
            <asp:Button ID="BtnConfirm" runat="server" CssClass="button2" Text="Jag är intresserad av att bli partner" />
        </div>
    </form>
</body>
</html>
