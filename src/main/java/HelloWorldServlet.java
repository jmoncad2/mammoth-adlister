import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet")
public class HelloWorldServlet extends HttpServlet {
    private int hitCount;
    public void init()
    {
        // Reset hit counter.
        hitCount = 0;
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        String name = request.getParameter("name");
//        if (name = null){
//
//        }
        hitCount++;
        PrintWriter out = response.getWriter();
        out.println("<h1 align=\"center\">Hello, " + name + "!</h1>\n" + "<h3 align=\"center\">Hit Counter</h3>\n" + "<h2 align=\"center\">" + hitCount + "</h2>\n");
    }
}
