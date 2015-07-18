
<?php

/**
* Copyright (C) 2015  WiSe Lab, Computer Science Department, Western Michigan University
*Project Members Involved: Ajay Gupta, Aakash Gupta, Baba Shiv, Praneet Soni, Shrey Gupta and Vinay B Gavirangaswamy
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>
*/

return array(

	/*
	|--------------------------------------------------------------------------
	| Mail Driver
	|--------------------------------------------------------------------------
	|
	| Laravel supports both SMTP and PHP's "mail" function as drivers for the
	| sending of e-mail. You may specify which one you're using throughout
	| your application here. By default, Laravel is setup for SMTP mail.
	|
	| Supported: "smtp", "mail", "sendmail"
	|
	*/

	'driver' => 'smtp',

	/*
	|--------------------------------------------------------------------------
	| SMTP Host Address
	|--------------------------------------------------------------------------
	|
	| Here you may provide the host address of the SMTP server used by your
	| applications. A default option is provided that is compatible with
	| the Mailgun mail service which will provide reliable deliveries.
	|
	*/

	'host' => 'smtp.mailgun.org',

	/*
	|--------------------------------------------------------------------------
	| SMTP Host Port
	|--------------------------------------------------------------------------
	|
	| This is the SMTP port used by your application to delivery e-mails to
	| users of your application. Like the host we have set this value to
	| stay compatible with the Mailgun e-mail applications by default.
	|
	*/

	'port' => 587,

	/*
	|--------------------------------------------------------------------------
	| Global "From" Address
	|--------------------------------------------------------------------------
	|
	| You may wish for all e-mails sent by your application to be sent from
	| the same address. Here, you may specify a name and address that is
	| used globally for all e-mails that are sent by your application.
	|
	*/

	'from' => array('address' => null, 'name' => null),

	/*
	|--------------------------------------------------------------------------
	| E-Mail Encryption Protocol
	|--------------------------------------------------------------------------
	|
	| Here you may specify the encryption protocol that should be used when
	| the application send e-mail messages. A sensible default using the
	| transport layer security protocol should provide great security.
	|
	*/

	'encryption' => 'tls',

	/*
	|--------------------------------------------------------------------------
	| SMTP Server Username
	|--------------------------------------------------------------------------
	|
	| If your SMTP server requires a username for authentication, you should
	| set it here. This will get used to authenticate with your server on
	| connection. You may also set the "password" value below this one.
	|
	*/

	'username' => null,

	/*
	|--------------------------------------------------------------------------
	| SMTP Server Password
	|--------------------------------------------------------------------------
	|
	| Here you may set the password required by your SMTP server to send out
	| messages from your application. This will be given to the server on
	| connection so that the application will be able to send messages.
	|
	*/

	'password' => null,

	/*
	|--------------------------------------------------------------------------
	| Sendmail System Path
	|--------------------------------------------------------------------------
	|
	| When using the "sendmail" driver to send e-mails, we will need to know
	| the path to where Sendmail lives on this server. A default path has
	| been provided here, which will work well on most of your systems.
	|
	*/

	'sendmail' => '/usr/sbin/sendmail -bs',

	/*
	|--------------------------------------------------------------------------
	| Mail "Pretend"
	|--------------------------------------------------------------------------
	|
	| When this option is enabled, e-mail will not actually be sent over the
	| web and will instead be written to your application's logs files so
	| you may inspect the message. This is great for local development.
	|
	*/

	'pretend' => false,

);
