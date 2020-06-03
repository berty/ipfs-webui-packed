package ipfswebui_test

import (
	"fmt"
	"net/http"

	ipfswebui "berty.tech/ipfs-webui-packed"
)

func Example() {
	fmt.Println(ipfswebui.Dir())
	// output: /webui
}

func Example_http() {
	dir := http.FileServer(ipfswebui.Dir())
	http.ListenAndServe(":3000", dir)
}
