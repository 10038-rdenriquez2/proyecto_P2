<?php 
	
	//define("BASE_URL", "http://localhost/tienda_virtual/");
	const BASE_URL = "http://localhost/tienda_virtual";

	//Zona horaria
	date_default_timezone_set('America/Guayaquil');

	//Datos de conexión a Base de Datos
	const DB_HOST = "localhost";
	const DB_NAME = "db_tiendavirtual";
	const DB_USER = "root";
	const DB_PASSWORD = "123";
	const DB_CHARSET = "utf8";

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "$";
	const CURRENCY = "USD";

	// SANDBOX:
	const URLPAYPAL = "https://api-m.sandbox.paypal.com";
	const IDCLIENTE = "AXnwqLn_yYyE9xTtfHEdFpGf8F03WTClE87ESp1K-wlI8-xKsg3n0Q23k83U4eGaepvZhsohW5IpdpIO";
	const SECRET = "EEdHRNeNhSIPUJM7n8KkvSfR_OE3QBG153p37ve-L6TGleamdQVAY-0DbxShYE2TSevOxdgTY1iFV-u9";
	// LIVE:
	//const IDCLIENTE = "AbdJOzxcaQgRLAYPB1p2b0Cm60hDFEG4aaYhtc1fo8WJGyDNzsEP16vLO1bHPeIjytPsjfW8HWNd0Epc";
	// const URLPAYPAL = "https://api-m.paypal.com";
	// const SECRET = "EEF8FB3PGVUYZaWrDpexDkLoTiPf5w3hZAsmd1tXSS7iF5nyJ7RJQ6gDa0ZywwQwL6T8V4HTDHfgNNxa";

	//Datos envio de correo
	const NOMBRE_REMITENTE = "Tienda Virtual";
	const EMAIL_REMITENTE = "no-reply@tienda_virtual.com";
	const NOMBRE_EMPESA = "Tienda Virtual";
	const WEB_EMPRESA = "www.tienda_virtual.com";

	// Datos de la empresa
	const DIRECCION = "Universidad de las Fuerzas Armadas";
	const TELEMPRESA = "0987654321";
	const EMAIL_EMPRESA = "ejemplo@gmail.com";
	const EMAIL_PEDIDOS = "ejemplo2@gmail.com";
	
	// Para la extracción de categorías en el slider

	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "1,2,3";

	const KEY = 'llave100%segurapingadeoro';
	const METHODENCRIPT = "AES-128-ECB";
	
	const COSTOENVIO = 5;

 ?>