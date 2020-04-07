package DemoApi.karate.features;

import com.intuit.karate.junit5.Karate;

/**
 * Unit test for simple App.
 */

public class SampleTest {
	@Karate.Test
	Karate testSample() {
		return Karate.run("sample").relativeTo(getClass());		
	}	
}
