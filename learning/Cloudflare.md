# CLOUDFLARE INTRODUCTION

## Session 1
The objectives are to learn:
1) What Cloudflare is
2) Difference between serverless and cloud computing paradigms.
3) How workers work.

!! important terms !!
- Paradigm: A typical example or pattern of something; model.

### What is Cloudflare?
- It is a global network of servers (one of the largest)!
- offers SASE and SSE services, application and infrastructure services and developer platform.

!! what is SASE and SSE? !!
- SASE is a comprehensive framework that merges networking and security into a single cloud service, encompassing SD-WAN and security components like CASB, FWaaS, and ZTNA. SSE focuses strictly on the security aspect, delivering critical services such as threat protection and access control without the SD-WAN component. (source palo alto networks)

### Developer Platform
- It includes Cloudflare Workers which allows users to deploy serverless  code* instantly across the globe.

!! Built with Cloudflare !!
- When a user adds an application to Cloudflare, Cloudflare's global network of servers will sit in between requests to their application and the application's origin server.
- Origin server: Its purpose  is to process and respon to incoming internet requests from internet clients. At its core, an origin server is a computer running one or more programs that are designed to listen for and process incoming Internet requests. 

### What Cloudflare offers
- Using workers to augment* the application by deploying code.
- Add storage recsources available on the Developer Platform.
- Able to speed up content delivery and user experience (CDN*)
- Protect websites from malicous activity (DDoS*)
- Route traffic (Load Balancing, Waiting room)

!! important terms !!
- augment: make something greater by adding to it; increase.
- CDN (Content Delivery Network): It is a geographically distributed group of servers that caches content close to end users. A CDN allows for the quick transfer of asssets needed for loading internet content, including HTML pages, JS files. stylesheets, images and videos. Majority of web traffic now is served through CDNs. A properly configured CDN may also protect websites against some common malicious attacks such as DDoS attacks.
- DDos (Distributed Denial of Service) Attacks: : It is a malicious attempt to disrupt normal traffic of a targeted server or service not network bor flooding the target with internet traffic. This is accomplished by using multiple compromised computer systems as sources of attack traffic. These devices include computers and IoT devices, They can be reffered to as a botnet where an individual compromised system is called a bot.

### How to identify a DDoS attack
- Most obvious symptom is the site or service suddenly becoming slow or unavailable. But this also can be replicated with organic traffic for when at a single given moment lots of users wanna access the website or service. 
- Some tools can be used to identify a DDoS attack. Using these tools a user can determine whether:
1) The traffic is coming from a single IP address or IP range
2) The traffic shares a singular behavioral profile, such as device type, geolocation or web browser version.
3) An unexplained surge in requests to a single page or endpoint
4) Odd traffic patterns such as spikes at odd hours of the day or patterns that appear unnatural.

### Types of DDoS
- Diff types of DDoS target varying components of a network connection. We will have to look at how a nerwork connection is made.

### The OSI (Open Systems Interconnection) model
- Created by the International Organisation of Standardization, it allows diverse communicatoin systems to communicate using standard protocols*. Simply, it allows different computer systems to communicate with each other.

!! The 7 layers !! [top to down]
7)Application Layer
    - Human-computer interaction layer, where applications can access the network services.
6)Presentation Layer
    - Ensures the data is in a usable format and is where data encryption occurs.
5)Session Layer
    - Maintains connections and is responsible for controlling ports and sessions.
4)Transport Layer
    - Transmits data using transmission protocols including TCP* and UDP*.
3)Network Layer
    - Decides which physical path the data will take.
2)Data Link Layer
    - Defines the format of data on the network.
1)Physical Layer
    - Transmits raw bit stream over the pysical medium.

!! Important terms !!
- TCP (Transmission Control Protocol): drives reliable data transfers.  It is a connection-oriented protocol.
- UDP (User Datagram Protocol): prioritizes speed and efficiency. UDP is part of the Internet Protocl suite reffered to as the UDP/IP suite. It is an unreliable and connectionless protocol.

**Both are part of the transport layer protocols.

### TCP (Transmission Control Protocol)
- It lies between the Application layer and the Network layers which are used in providing reiable delivery services. It is a connection-oriented protocol for communications that helps in the exchange of messages between different devices over a network. The Internet Protocol, which establishes the technique for sending data packets between computers, works WITH TCP.

- Features: 
    1) Keeps track of the segments being transmistted or received by assigning numbers to every single one of them.
    2) Flow control limits the rate at which a sender transfers data. Done to ensure reliable delivery.
    3) Implements an error control mechanism for reliable data transfer. 
    4) Takes into account the level of congestion in the network.

- Application:
    1) WWW: TCO ensures reliable data transfer between your browser and web servers.
    2) Email: TCP is used for sending and receiving emails. Protocols like SMTP (Simple Mail Transfer Protocol) handle email delivery across servers.
    3) FTP: FTP relies on TCP to transfer large files securely. Whether you're uploading or downloading files. TCP ensures data integrity.
    4) SSH (Secure Shell): SSH sessions, commonly used for remote adminidtration, rely on TCP for encrypted communication between client and server.
    5) Streaming Media: Netflix, Youtube and Spotify use TCP to stream videos and music. It ensures smooth playback by managing data segments and retransmissions. 

- Advantages:
    1) It is reliable for maintaining a connection betwee Sender and Receiver.
    2) Responsible for sending data in a particular order.
    3) Its operations are not dependent on Operating Systems.
    4) It allows and supports many routing protocols.
    5) It can reduce the speed of data based on the speed of the receiver.

- Disadvantages:
    1) It is slower than UDP and it takes more bandwidth.
    2) Slower upon starting of transfer of a file. Not suitable for LAN and PAN Networks. 
    3) It does not have a multicast or broadcast category.
    4) It does not load the whole page if a single data of the page is missing.

### UDP (User Datagram Protocol)
- It is a transport layer protocol. It is part of the internet protocol suite, reffered to as the UDP/IP suite. Unlike TCP, it is an unreliable and connectionless protocol. So there is no need to astablish a connection before dta transfer. The USP helps to establish low-latency and loss-tolerating connecions establish over the network. The UDP enables process-to-process communcation. 

- Features: 
    1) Used for simple request-response communicationwhen the size of the data is lesser the concern aboutflow and error control.
    2) It is a suitable protocol for multicasting as UDP supports packet switching*.

    3) UDP is used for some routing update protocols like RIP (Routing information Protocol). 
    4) Normally used for real-time applications which can not toelrate uneven delays between sections of a received message.

- Application:
    1) Real-Time Multimedia Streaming: It is low latency in nature which ensures smooth playback, EVEN if occasional data loss occurs.
    2) Online Gaming: Many online games rely on UDP for fast communicaation between players.
    3) DNS (Domain Name System) Queries: WHen your device looks up domain names, UDP handles these requests efficiently.
    4) Network Monitoring: Tools that monitor network performance OFTEN use UDP for lightweight, rapid data exchange.
    5) Multicasting: UDP supports packet switching, making it suitable for multicasting scenarios where data needs to be sent to multiple recipients simultaneously.
    6) Routing Update Protocols: Some routing protocols like RIP utilize UDP for exchanging routing information among routers.

- Advantages:
    
