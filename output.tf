output "Jenkins-main-node-public-ip" {
  value = aws_instance.jenkins-master.public_ip
}

output "Jenkins-worker-public-IPs" {
  value = {
    for instance in aws_instance.jenkins-worker-uswest2 :
    instance.id => instance.public_ip
  }

}

output "LB-DNS-NAME" {
  value = aws_alb.application-lb.dns_name
  
}