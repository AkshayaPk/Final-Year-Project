package com.jeppiaar.dao;

import java.sql.Types;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;


import com.jeppiaar.model.Point;
import com.jeppiaar.util.ConnectionUtil;

public class PointDAO {
	JdbcTemplate jdbcTemplate = ConnectionUtil.getJdbcTemplate();

	public int save(Point point) {
		String sql = "insert into users(name,lat,lon)values (?,?,?,?)";
		Object[] params = { point.getPointName(), point.getLat(), point.getLon() };
		return jdbcTemplate.update(sql, params);
	}

	public List<Point> list() {
		final String sql = "select id,name,student_count,lat,lon from points";
		return jdbcTemplate.query(sql, (rs, rowNum) -> {
			final Point point = new Point();
			point.setId(rs.getInt("id"));
			point.setPointName(rs.getString("name"));
			point.setLat(rs.getDouble("lat"));
			point.setLon(rs.getDouble("lon"));
			point.setStudentCount(rs.getInt("student_count"));
			return point;
		});
	}
	
	public List<Point> listDistance(Point points)
	{
		final String sql = "SELECT NAME,student_count, TRUNCATE((6371 * ACOS( COS( RADIANS((SELECT lat FROM points WHERE NAME=?)) ) * COS( RADIANS( lat ) ) * COS( RADIANS( (SELECT lon FROM points WHERE NAME=?)) - RADIANS(lon) ) + SIN( RADIANS((SELECT lat FROM points WHERE NAME=?)) ) * SIN( RADIANS(lat) ) )),2) AS distance FROM points WHERE lat<>''AND lon<>''AND student_count != 0 HAVING distance<30 ORDER BY distance DESC";
		Object params[]={points.getPointName(),points.getPointName(),points.getPointName()};
		return jdbcTemplate.query(sql, params,(rs, rowNum) -> {
			final Point point = new Point();
			point.setPointName(rs.getString("name"));
			point.setStudentCount(rs.getInt("student_count"));
			point.setDistance(rs.getDouble("distance"));
			System.out.println(point);
			return point;
		});

	}
	
//	public List<Point> calcDistance(String boardingPoint) {
//		SimpleJdbcCall call = new SimpleJdbcCall(jdbcTemplate).withProcedureName("distance").declareParameters(
//				new SqlParameter("i_boardingpoint", Types.VARCHAR));
//		call.setAccessCallParameterMetaData(false);
//		SqlParameterSource in = new MapSqlParameterSource().addValue("i_boardingpoint", boardingPoint);
//		Map<String, Object> execute = call.execute(in);
//		return (List<Point>) execute.get();
//
//	}
	
}
