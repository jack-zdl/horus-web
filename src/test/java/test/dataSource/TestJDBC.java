package test.dataSource;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

/**@author  zhangdelei
 * @data 2017年3月19日下午3:25:27
 *@Description   ClassPathXmlApplicationContext("classpath:applicationContext-jdbc.xml");必须加 classpath
 *	使用spring来操作数据库
 */

public class TestJDBC {
	
	private static ApplicationContext ctx = null;
	private static JdbcTemplate jdbcTemplate;
	
	static{
		ctx = new ClassPathXmlApplicationContext("classpath:applicationContext-jdbc.xml");
		jdbcTemplate = (JdbcTemplate) ctx.getBean("jdbcTemplate");
	}
	
	@Test
	 public void testDataSource() throws SQLException{
		 DataSource data = ctx.getBean(DataSource.class);
		 System.out.println(data.getConnection());
	 }
}
