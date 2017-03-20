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
	
	private  ApplicationContext ctx = null;
	private  JdbcTemplate jdbcTemplate;
	
	{
		ctx = new ClassPathXmlApplicationContext("classpath:applicationContext-jdbc1.xml");
		jdbcTemplate = (JdbcTemplate) ctx.getBean("jdbcTemplate");
	}
	/**
	 * @author  zhangdelei
	 * @data 2017年3月19日下午8:09:08
	 *@Description 测试更新  执行INSERT UPDATE DELETE
	 */
	@Test
	public void testUpdate(){
		String sql = "UPDATE  tbl_user SET money = ? WHERE id = ?";
		jdbcTemplate.update(sql, "160", "1");
	}
	
	/**
	 * @author  zhangdelei
	 * @data 2017年3月19日下午8:14:08
	 *@Description 测试spring jdbc连接是否成功
	 */
	
	@Test
	 public void testDataSource() throws SQLException{
		 DataSource data = ctx.getBean(DataSource.class);
		 System.out.println(data.getConnection());
	 }
}
