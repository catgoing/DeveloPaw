												<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
												<div class="center">
												<div class="pagination">
												<table>
												<tr style="text-align:center;">
												<td >
													        <form action="/community/boardSearch" method="get" style="left : 300px;">
														        <select name="idx">
														          <option value="0">제목</option>
														          <option value="1">내용</option>
														        </select>
														        <input type="text" name="keyword" style="border : 1px solid; margin:5px; height:30px; width:300px">
														        <input type="hidden" name="board_idx" value="${board_idx }">
														        <input type="submit" value="검색" style="width:100px">
													        </form>
													        </td>
													        </tr>
	        									</table>
												</div>
												</div>