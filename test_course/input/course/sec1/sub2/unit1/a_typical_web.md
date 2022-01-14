# UNIT ==========
{:
  display_name="A Typical Web Application"
}

# COMPONENT ==========
{:
  type="html"
  display_name="A typical web application"
}

Our example architecture consists of the following explained components,  and it demonstrates the practical usage of several products together and the associated costs. 

**Application Servers**
run the web application. The application reads from the DB servers via the Elastic IP v2, and users access this web service via another Elastic IP v2 that distributes traffic evenly among them. Upload user files to the Public File Bucket. Installed in an Anti-Affinity group.

**Database Server**
operate a shared database (*MySQL, MongoDB, etc.*) that is capable of replicating data. Installed in an anti-affinity group to ensure that the individual components are never on the same physical host. 

**Backup Server**
responsible for reading the data and uploading it to the Backup Bucket object storage. 

**Public File Bucket**
stores and publishes user files, such as profile pictures, and makes them publicly available.

**Backup Bucket** 
holds the backups of the DB servers and the Public File Bucket.

**Elastic IP**
in v2 is used as a simple load balancer in this scenario that distributes traffic evenly.

**Exoscale DNS**
responsible for resolving the service domain name (*example.com*).