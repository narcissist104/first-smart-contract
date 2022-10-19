pragma solidity 0.5.1;

contract Counter {
    uint count = 0;     //state variable, stored on the blockchain.
    
    event Increment(uint value);    //Events can be listened in to and kept a track of, eventstream, event history control
    event Decrement(uint value);

/*     constructor() public {
        count = 0;
    } */

    function increment() public {
        count += 1;
        emit Increment(count);
    }

    function decrement() public {
        count -= 1;
        emit Decrement(count);
    }
}