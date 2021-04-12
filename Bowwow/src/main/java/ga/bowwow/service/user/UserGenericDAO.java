package ga.bowwow.service.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class UserGenericDAO<T> {
	@Autowired
	protected SqlSessionTemplate mybatis;
	
	public String typeName;
	public String insertQuery;
	public String updateQuery;
	public String deleteQuery;
	public String getQuery;
	public String searchQuery;
	public String getListQuery;

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
	
	public void insert(T t) {
		mybatis.insert(insertQuery, t);
	}
	public void update(T t) {
		System.out.println("update result CHECK : " + 
				mybatis.update(updateQuery, t)
				);
	}
	public void delete(T t) {
		mybatis.update(deleteQuery, t);
	}
	public T get(T t) {
		return mybatis.selectOne(getQuery, t);
	}
	public T search(T t) {
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