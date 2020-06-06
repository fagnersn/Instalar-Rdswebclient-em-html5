# INSTALAR RDS WEB CLIENTE EM HTML5


New-SelfSignedCertificate -DnsName “SRV.contoso.local” –CertStoreLocation “cert:\LocalMachine\My” -TestRoot # Cria o certificado SSL para o servidor hostname SRV

Install-Module -Name PowershellGet -Force

Install-Module -Name RDWebClientManagement 

Install-RDWebClientPackage

Import-RDWebClientBrokerCert c:\temp\certificados\srv-cert.cer  #Pasta onde você armazenou o certificado do Broker

Publish-RDWebClientPackage -Type Production -Latest

# Acessar Url em https://seu-servidor.com/rdweb/webclient/index.hmtl