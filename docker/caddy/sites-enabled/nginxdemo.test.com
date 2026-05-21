nginxdemo.test.com {
	import pocket-id
	reverse_proxy http://nginxdemo
}
