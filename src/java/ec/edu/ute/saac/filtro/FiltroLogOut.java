package ec.edu.ute.saac.filtro;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


public class FiltroLogOut implements Filter {
  private FilterConfig config;

  public static final Log log = LogFactory.getLog(FiltroLogOut.class);

    @Override
  public void destroy() {
    this.config = null;
  }

    @Override
  public void init(FilterConfig config) throws ServletException {
    this.config = config;

  }

    @Override
  public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
    throws ServletException, IOException {

    HttpSession session = ((HttpServletRequest)req).getSession();
    if(log.isDebugEnabled())log.debug("***session capturado por filtro" );
    session.invalidate();
    if(log.isDebugEnabled())log.debug("***session invalidada");
    chain.doFilter(req, resp);
    ((HttpServletResponse)resp).sendRedirect(((HttpServletRequest)req).getContextPath() + "/index.jsf");
   
  }
}
