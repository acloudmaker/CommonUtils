# Git Commands Reference
## Official Sources
* [Pro Git Book](http://git-scm.com/book/en/v2)
* [Git Reference](http://git-scm.com/docs)

### Set userid and password
Protect the file appropriately or enter password upon ask.  
#### Doc Ref  
* [A good read with links to git documentation](https://coolaj86.com/articles/vanilla-devops-git-credentials-cheatsheet/)
* [Git-gitcredentials](http://git-scm.com/docs/gitcredentials)

```
export GITUSER=<YOUR_USERNAME>
export GITPW=<PASSWORD or TOKEN>
git config remote.origin.url https://$GITUSER:$GITPW@github.com/YOUR_USERNAME/YOUR_REPOSITORY.git
```

### Helpful Environment Variables
#### Doc Ref
* [Git Book-Internals-Environment-Variables](https://git-scm.com/book/en/v2/Git-Internals-Environment-Variables)

### Server Certificate Verification failed
Error message: _server certificate verification failed. CAfile: /etc/ssl/certs/ca-certificates.crt CRLfile: none_
* [Stackoverflow Discussion](https://stackoverflow.com/questions/21181231/server-certificate-verification-failed-cafile-etc-ssl-certs-ca-certificates-c)
