package ga.bowwow.service.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class UserGenericDAO<T> {
	@Autowired
	protected SqlSessionTemplate mybatis;
	
	String insertQuery;
	String updateQuery;
	String deleteQuery;
	String getQuery;
	String searchQuery;
	String getListQuery;

	public UserGenericDAO() {
	}
	protected void setQueries(String insertQuery
							, String updateQuery
							, String deleteQuery
							, String getQuery
							, String searchQuery
							, String getListQuery) {
		this.insertQuery = insertQuery;
		this.updateQuery = updateQuery;
		this.deleteQuery = deleteQuery;
		this.getQuery = getQuery;
		this.searchQuery = searchQuery;
		this.getListQuery = getListQuery;
		
	}
	
	protected void insertUser(T t) {
		mybatis.insert(insertQuery, t);
	}
	protected void updateUser(T t) {
		mybatis.update(updateQuery, t);
	}
	protected void deleteUser(T t) {
		mybatis.update(deleteQuery, t);
	}
	protected T getUser(T t) {
		return mybatis.selectOne(getQuery, t);
	}
	protected T searchUser(T t) {
		return mybatis.selectOne(searchQuery, t);
	}
	
	protected void setMybatis(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}
	protected String getInsertQuery() {
		return insertQuery;
	}
	protected String getUpdateQuery() {
		return updateQuery;
	}
	protected String getDeleteQuery() {
		return deleteQuery;
	}
	protected String getGetQuery() {
		return getQuery;
	}
	protected String getSearchQuery() {
		return searchQuery;
	}
	protected void setSearchQuery(String searchQuery) {
		this.searchQuery = searchQuery;
	}
	protected void setGetListQuery(String getListQuery) {
		this.getListQuery = getListQuery;
	}
}