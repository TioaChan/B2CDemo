<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="B2C_NetShop.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<style>
		#Master_content {
			display: none;
		}
        #container{
            width:1000px;
            height:667px;
            margin:0 auto;
        }

        #content_left{
            background:#808080;
            width:550px;
            height:667px;
            float:left;
        }

        #content_left input{
            display:block;
            height:29px;
            max-width:100%;
            margin-bottom:9px;
            padding:15px 0px;
            width: 539px;
            border:0px;
        }

        #content_right{
            width:250px;
            height:667px;
            background:red;
            float:left;
        }

        textarea{
            height:283px;
            width:503px;
        }
	</style>

    <div id="container">
        <div id="content_left">
            <input type="text" name="name" value="" />
            <input type="text" name="name" value="" />
            <input type="text" name="name" value="" />
            <input type="text" name="name" value="" />
            <textarea name="S1" rows="1"></textarea>
        </div>
        <div id="content_right">
            	<h2><%: Title %>.</h2>
	            <h3>Your contact page.</h3>
	            <address>
		            One Microsoft Way<br />
		            Redmond, WA 98052-6399<br />
		            <abbr title="Phone">P:</abbr>
		            425.555.0100
   
	            </address>

	            <address>
		            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
		            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
	            </address>
        </div>
    </div>



</asp:Content>
