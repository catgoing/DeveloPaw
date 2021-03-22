package ga.bowwow.store;

import java.util.List;

import org.springframework.context.support.GenericXmlApplicationContext;

public class storeServiceClient {

	public static void main(String[] args) {
		//1. 스프링 컨테이너 구동
		GenericXmlApplicationContext container
			= new GenericXmlApplicationContext("applicationContext.xml");
		
		System.out.println("---- 컨테이너 구동 후 -----");
		//2. 스프링 컨테이너 사용
		storeService storeService = (storeService) container.getBean("storeService");
		
		//데이터 입력
		store vo = new store();

		storeService.insertStore(vo);
		
		//전체 데이터 조회
		List<store> list = storeService.getStoreList();
		for (store store : list) {
			System.out.println("store: "+ store);
		}
		
		//3. 스프링 컨테이너 종료
		container.close();

	}

}
