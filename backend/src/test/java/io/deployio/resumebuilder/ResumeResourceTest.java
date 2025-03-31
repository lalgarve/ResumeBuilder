package io.deployio.resumebuilder;

import io.quarkus.test.junit.QuarkusTest;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.given;
import static org.hamcrest.CoreMatchers.is;

@QuarkusTest
class ResumeResourceTest {
    @Test
    void testHelloEndpoint() {
        given()
          .when().get("/resume")
          .then()
             .statusCode(200)
             .body(is("Hello RESTEasy"));
    }

}