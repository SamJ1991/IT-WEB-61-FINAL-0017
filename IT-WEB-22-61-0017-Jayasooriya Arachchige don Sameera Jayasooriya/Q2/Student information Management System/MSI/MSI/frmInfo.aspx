<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmInfo.aspx.cs" Inherits="MSI.frmInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MSI - Student Infor</title>
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
                      <th>
                          <asp:GridView ID="GridView1" runat="server">
                            </asp:GridView>
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
