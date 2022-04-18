<html>
<body>
<h2>Welcome</h2>
<%@page contentType="text/html" import="java.util.*,javax.naming.*,javax.sql.DataSource,java.sql.*"%>
<%
        DataSource ds = null;
        Connection con = null;
        PreparedStatement pr = null;
        InitialContext ic;
        try {
                ic = new InitialContext();
                ds = (DataSource) ic.lookup("java:/jboss/PGDS");
                con = ds.getConnection();
                pr = con.prepareStatement("select Name,sbr from employee");
                ResultSet rs = pr.executeQuery();
                while (rs.next()) {
                        out.println("<br> " + rs.getString("Name") + " | "
                                        + rs.getString("sbr"));
                }
                rs.close();
                pr.close();
        } catch (Exception e) {
                out.println("Exception thrown " + e);
        } finally {
                if (con != null) {
                       con.close();
                }
        }
%>
</body>
</html>
