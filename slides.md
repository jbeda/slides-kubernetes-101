layout: true
background-image: url(photos/k8s-sticker.jpg)
background-size: cover
background-position: 50% 25%
image-credit: Photo "k8s Sticker" shared by Joe Beda under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/4.0/)

---
class: middle, center

# Kubernetes 101

.cblock[
Joe Beda<br>
CTO, Heptio
]

.image-credit[
{{image-credit}}
]

---

class: column-slide
background-image: url(photos/record.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mavadam/3241311268 "Turntable") shared by [VanDammeMaarten](https://flickr.com/people/mavadam) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Recap
## Containers
]
.right-column[
.center[
# "It's the next big thing!"
]
]
]

.image-credit[
{{image-credit}}
]

---

class: column-slide
background-image: url(photos/record.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mavadam/3241311268 "Turntable") shared by [VanDammeMaarten](https://flickr.com/people/mavadam) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Recap
## Linux Kernel Features

]
.right-column[
cgroups:

* Resource limiting, tracking, prioritization, and isolation
* CPU, RAM, IO, Networking, etc.
* Developed by Google for over ~10 years
* "nice++"

namespaces:

* Resource visibility and naming isolation
* network, PID, users, mounts
* "chroot++"

cgroups + namespaces = "lightweight virtualization"
]
]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/record.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mavadam/3241311268 "Turntable") shared by [VanDammeMaarten](https://flickr.com/people/mavadam) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Recap
## User Experience

]
.right-column[
Containers == Docker?

* *Image format:* Upload, download, share, build
* *API:* Automatable create, delete, start, stop
* *Networking*: Good defaults
]
]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/record.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mavadam/3241311268 "Turntable") shared by [VanDammeMaarten](https://flickr.com/people/mavadam) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Recap
## Excitement

]
.right-column[
Users benefits:

1. Packaging, deployment and reuse
2. Efficiency and overcommit
3. Security*

This list is in order

\* Big caveats here currently
]
]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/record.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mavadam/3241311268 "Turntable") shared by [VanDammeMaarten](https://flickr.com/people/mavadam) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Recap
## Gaps

]
.right-column[
Dev &rarr; Production

* Multi-machine
* Discovery and Naming
* Scaling
* Multiple users
* Failure tolerance and recovery
* Monitoring
* Logging
* High availability
* Deployment lifecycle
* Load balancing
* etc, etc

]
]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/record.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mavadam/3241311268 "Turntable") shared by [VanDammeMaarten](https://flickr.com/people/mavadam) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Recap
## Micro-services?

]
.right-column[

 * Split your application into small services that can be reused, remixed and shared.
 * Enables smaller, nimble, decoupled teams and processes.
 * Better tooling enables and encourages microservices.

Not what I'm talking about today.

]
]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/ship-wheel.jpg)
image-credit: [flickr photo](https://flickr.com/photos/leroy-freakwinter/3108057269 "Captain Jack Sparrow") shared by [Rick Galvan](https://flickr.com/people/leroy-freakwinter) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Kubernetes
## Defined

]
.right-column[


Kubernetes is ancient Greek for "Helmsman".  Root of the word "Governor", "Cybernetics".

Kubernetes is a "Container Orchestrator" or "Cluster Manager".

* Places containers on nodes
* Recovers automatically from failure
* Basic monitoring, logging, health checking
* Enables containers to find each other.


Key component in *logical infrastructure*

]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/ship-wheel.jpg)
image-credit: [flickr photo](https://flickr.com/photos/leroy-freakwinter/3108057269 "Captain Jack Sparrow") shared by [Rick Galvan](https://flickr.com/people/leroy-freakwinter) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Kubernetes
## Google Grown
]
.right-column[
Based on ideas proven at Google over 10 years

*Everything* at Google runs in a container.

Google launches 2 billion containers per week.

Part of a larger set of tools that make up the internal Google platform.
]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/ship-wheel.jpg)
image-credit: [flickr photo](https://flickr.com/photos/leroy-freakwinter/3108057269 "Captain Jack Sparrow") shared by [Rick Galvan](https://flickr.com/people/leroy-freakwinter) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Kubernetes
## Open Source
]
.right-column[
https://github.com/kubernetes/kubernetes

*Very* active open source project

23k stars, 1400+ contributors

Apache 2 licensed

Written in Go

Owned by the Cloud Native Computing Foundation
]]

.image-credit[
{{image-credit}}
]

???

stats with git shortlog -sn --no-merges | wc

---
class: column-slide
background-image: url(photos/ship-wheel.jpg)
image-credit: [flickr photo](https://flickr.com/photos/leroy-freakwinter/3108057269 "Captain Jack Sparrow") shared by [Rick Galvan](https://flickr.com/people/leroy-freakwinter) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Kubernetes
## Benefits
]
.right-column[
Extend the container goodness across nodes.

Enable operations specialization. Cluster Ops vs. App Ops

Reduce cost to run many things in production.  Enables new ways of building applications.
]]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/space-needle.jpg)
image-credit: [flickr photo](https://flickr.com/photos/seattlemunicipalarchives/6175308389 "Space Needle under construction, 1961") shared by [Seattle Municipal Archives](https://flickr.com/people/seattlemunicipalarchives) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Design Principles
]
.right-column[
* declarative > imperative
* control loops
* simple > complex
* modularity
* legacy compatible
* network-centric
* labels > hierarchy
* cattle > pets
* open > closed
]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts
## Cluster
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/cluster.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts
## Pod
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/pod.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts
## Labels
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/labels.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts
## Replication Controller
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/rc.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts
## Replication Controller
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/rc2.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts
## Service
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/service.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/core-memory.jpg)
image-credit: [flickr photo](https://flickr.com/photos/dvanzuijlekom/6952363784 "Magnetic-core Memory") shared by [dvanzuijlekom](https://flickr.com/people/dvanzuijlekom) under a [Creative Commons ( BY-SA ) license](https://creativecommons.org/licenses/by-sa/2.0/)

.column-container[.left-column[
# Core Concepts
## Persistent Volumes
]
.right-column[.center[
<object type="image/svg+xml" data="diagrams/pvs.svg">
</object>
]]]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/road.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mdalmuld/9559878695 "We're on the Road to Nowhere") shared by [mdalmuld](https://flickr.com/people/mdalmuld) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# So much more!
]
.right-column[
* **Namespaces**
  * Isolated workspaces for users/projects
* **Ingress**
  * L7 load balancing
* **Deployments**
  * Declarative version updates
* **Jobs**
  * Run to completion
* **Autoscaling**
  * Automatically adjust replica count
* **DaemonSets**
  * Run something on every node (or subset)
]]

.image-credit[
{{image-credit}}
]

---
class: column-slide
background-image: url(photos/road.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mdalmuld/9559878695 "We're on the Road to Nowhere") shared by [mdalmuld](https://flickr.com/people/mdalmuld) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# So much more!
]
.right-column[
* **Role Based Access Control (RBAC)**
  * Control what users have access to what objects
* **Multiple Schedulers**
* **Flexible Scheduling Constraints**
  * Affinity, anti-affinity, taints, tolerations
* **PetSet**
  * Support for long term stateful distributed systems
* **Automatic Cluster Scaling**
  * K8s publishes signals that allow external services to scale the cluster automatically.
* **Cloud Provider Integration**
  * GCP, AWS, Azure, OpenStack, vSphere
* **Network Policy**
  * Network ingress policy
]]

.image-credit[
{{image-credit}}
]
---
class: column-slide
background-image: url(photos/road.jpg)
image-credit: [flickr photo](https://flickr.com/photos/mdalmuld/9559878695 "We're on the Road to Nowhere") shared by [mdalmuld](https://flickr.com/people/mdalmuld) under a [Creative Commons ( BY ) license](https://creativecommons.org/licenses/by/2.0/)

.column-container[.left-column[
# Ecosystem
]
.right-column[
* **Platforms**
  * OpenStack, Deis Workflow
* **Operators**
  * Automatic management of systems via API
  * Integrates using k8s extensions
  * etcd, Prometheus, elasticsearch, memcahced, mongodb, rook, etc.
* **Authentication Providers**
  * Extended via webhook.  OpenID Connect, OAuth 2, LDAP, SAML, etc.
  * Already implemented on GKE and GCE.
* **Helm: Package Manager**
  * Super easy to install applications and systems.
* **Extended Network Policy**
]]

.image-credit[
{{image-credit}}
]
---
class: middle, left
# Thank you!

.cblock[
Joe Beda<br>
[@jbeda](https://twitter.com/jbeda)<br>
https://www.heptio.com<br>
]

.ccblock[
[![Creative Commons License](img/cc-by.png)](http://creativecommons.org/licenses/by/4.0/)<br>
[Kubernetes 101](https://github.com/jbeda/k8s-slides) by Joe Beda is licensed under a [Creative Commons Attribution 4.0 International License](href="http://creativecommons.org/licenses/by/4.0/).
]

.image-credit[
{{image-credit}}
]
