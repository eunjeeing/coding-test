import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.Queue;

public class Main {
	public static void main(String[] args) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int N = Integer.parseInt(br.readLine());
		br.close();
		
		Queue<Integer> queue = new LinkedList<>();
		for(int i = 1; i <= N; i++) {
			queue.offer(i);
		}
		
		while(queue.size() > 1) {
			queue.poll();
			queue.offer(queue.peek());
			queue.poll();
		}
		
		System.out.println(queue.peek());
	}

}
