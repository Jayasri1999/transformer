# Transformer
XML to JSON Transmission involving ActiveMQ and Apache Camel.


Process:
-> Send XML data to Apache ActiveMQ
-> Apache Camel listens for data in the input Queue.
-> Transforms the data to JSON using XSLT.
-> Sends the data to the output Queue.

Steps:
-> To run Active MQ: _docker run -d --name activemq -p 8161:8161 -p 61616:61616 rmohr/activemq_

-> To access Active MQ: http://localhost:8161/admin    username:admin & password:admin

-> Clone the repository _git clone https://github.com/Jayasri1999/transformer.git_

-> Build the Project _mvn clean install_

-> Run the application _mvn spring-boot:run_

-> Run the following command for Windows:


```
$creds = Get-Credential -Credential admin
Invoke-WebRequest -Uri "http://localhost:8161/api/message/inputQueue?type=queue" `
    -Method Post `
    -Body '<order><id>12345</id><customer>Jayasri</customer><amount>250.00</amount></order>' `
    -ContentType "text/xml" `
    -Credential $creds

->  We can observe the results in ActiveMQ web console under "Queues" tab.
