package com.miracle.transformer.config;

import org.apache.camel.builder.RouteBuilder;
import org.springframework.stereotype.Component;

@Component
public class CamelConfig extends RouteBuilder {

    @Override
    public void configure() {
        from("activemq:queue:inputQueue?disableReplyTo=true")
            .log("Received XML Message: ${body}")
            .to("xslt:transform.xsl")
            .log("Transformed JSON: ${body}")
            .to("activemq:queue:outputQueue");
    }
}
