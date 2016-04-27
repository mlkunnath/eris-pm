contract c {
	uint[] maUIntz;
	int[] maIntz;
	bytes32[] maBytez;
	address[] maAddresses;

	function intCallWithArray(uint8[4] someUintz) constant returns (uint){
        return someUintz[3];
	}
	
	function bytesCallWithArray(bytes32[4] someBytez) constant returns (bytes32) {
		return someBytez[3];
	}
	
	function boolCallWithArray(bool[4] someBoolz) constant returns (bool){
        return someBoolz[3];
	}

	function addressCallWithArray(address[3] someAddressz) constant returns (address){
        return someAddressz[2];
	}

	function intMemoryArray() constant returns (uint8[4]) {
		return [1, 2, 3, 4];
	}

	function bytesMemoryArray() constant returns (bytes32[5]){
		bytes32[5] memory b;
		b[0] = "hello";
		b[1] = "marmots";
		b[2] = "how";
		b[3] = "are";
		b[4] = "you";
		return b;
	}

	function bytesPushArray() returns (uint) {
        return maBytez.push("marmot");
	}

	function bytesDeleteArrray() {
        delete maBytez;
	}
}
