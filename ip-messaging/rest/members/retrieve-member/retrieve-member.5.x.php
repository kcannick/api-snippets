<?php

// This line loads the library
require '/path/to/vendor/autoload.php';

use Twilio\Rest\Client;

// Find your Account Sid and Token at twilio.com/user/account
$sid = "ACCOUNT_SID";
$token = "AUTH_TOKEN";

// Initialize the client
$client = new Client($sid, $token);

// Retrieve the member
$member = $client->ipMessaging
    ->services("SERVICE_SID")
    ->channels("CHANNEL_SID")
    ->members("MEMBER_SID")
    ->fetch();

print $member->identity;
