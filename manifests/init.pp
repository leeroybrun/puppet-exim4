class exim4 (
  	$ensure = 'latest'
){

  	package { 'exim4': ensure => $ensure }

}
