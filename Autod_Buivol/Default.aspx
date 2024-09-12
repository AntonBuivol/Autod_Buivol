<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Autod_Buivol._Default" %>


<asp:content ID="Connt1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>xml ja xslt andmete kuvamine</h1>
    <br />
<%--    <div>
        <asp:Xml runat="server" DocumentSource="~/autod.xml" TransformSource="~/autodLisa.xslt" />
    </div>--%>
    
    <div>
        <asp:Xml runat="server" DocumentSource="~/reisid.xml" TransformSource="~/reisLisa.xslt" />
    </div>
</asp:content>
