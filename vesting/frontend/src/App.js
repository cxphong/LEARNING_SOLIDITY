import { ethers, providers } from "ethers";
import React from "react"
import Vesting from "./Vesting.json"

function App () {

  async function release() {
    const CONTRACT_ADDRESS = "0xa513E6E4b8f2a923D98304ec87F64353C4D5C853"

    const provider = new ethers.providers.Web3Provider(window.ethereum)
    const signner = provider.getSigner()
    const contract = new ethers.Contract(CONTRACT_ADDRESS, Vesting.abi, signner);
    console.log(contract)

    try {
      let data = await contract["release(address)"]("0x2279b7a0a67db372996a5fab50d91eaa73d2ebe6")
      // let data = await contract.vestedAmount(1655457324);
      console.log("data = " + data)
    } catch (err) {
      console.log("Error: ", err)
    }
  }

    return (
      <div>
        <button onClick={release}>RELEASE</button>
      </div>
    );

}

export default App;
