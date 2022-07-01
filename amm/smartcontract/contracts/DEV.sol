import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DEV is ERC20 {

    // Exchange is inheriting ERC20, because our exchange would keep track of Crypto Dev LP tokens
    constructor() ERC20("DEV LP Token", "DEVLP") {
        _mint(msg.sender, 1000000*10**18);
    }
}