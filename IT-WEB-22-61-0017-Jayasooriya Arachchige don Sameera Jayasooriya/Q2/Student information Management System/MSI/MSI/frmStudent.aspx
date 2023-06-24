<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmStudent.aspx.cs" Inherits="MSI.frmStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MSI - Student</title>
    <link rel="stylesheet" href="css/Main.css">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <header class="header">
          <a href="Home.aspx" class="logo">Flora Education</a>
          <nav class="nav-items">
            <a href="Home.aspx">Home</a>
            <a href="frmStudent.aspx">Student</a>
            <a href="frmCourse.aspx">Course</a>
            <a href="frmInfo.aspx">Information</a>
            <a href="frmAbout.aspx">About</a>
          </nav>
        </header>


        <main>
          <div style ="width: 100%; height: 720px; display: flex; flex-direction: column;  justify-content: center;  align-items: center;">
              
              <table style="align-items:center">
                  <tr>
                      <th>Student ID</th>
                      <th> 
                          <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                          
                      </th>
                  </tr>
                  <tr>
                      <th>Name</th>
                      <th> 
                          <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                      </th>
                  </tr>
                  <tr>
                      <th>City</th>
                      <th> 
                          <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                      </th>
                  </tr>
                  <tr>
                      <th>Cource</th>
                      <th> 
                          <asp:TextBox ID="txtCouse" runat="server"></asp:TextBox>
                      </th>
                  </tr>
                  <tr>
                      <th></th>
                      <th> 

                          <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />

                      </th>
                  </tr>
                  <tr>
                      <th></th>
                      <th> 
                          <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label>
                      </th>
                  </tr>
              </table>
          </div>
        </main>

        <footer class="footer">
          <div class="copy">&copy; 2023 Developer : JADS JAYASOORIYA</div>
          
        </footer>
    </div>
    </form>
</body>
</html>
