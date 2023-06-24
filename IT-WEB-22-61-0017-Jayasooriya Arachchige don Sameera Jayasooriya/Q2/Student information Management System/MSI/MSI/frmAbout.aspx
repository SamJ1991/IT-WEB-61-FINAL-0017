<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAbout.aspx.cs" Inherits="MSI.frmAbout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MSI - About</title>
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">--%>
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
          <div class="intro">
            <h1>A Web Developer</h1>
            <p>JADS Jayasooriya</p>
            <button>Learn More</button>
          </div>
          
        </main>

        <footer class="footer">
          <div class="copy">&copy; 2023 Developer</div>
          
        </footer>


    </div>
    </form>
</body>
</html>
