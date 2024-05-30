module mycoin::my_coin {
    use std::option;
    use sui::coin;
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};


    struct MY_COIN has drop {}


    fun init(witness: MY_COIN, ctx: &mut TxContext) {
        let (treasury, metadata) = coin::create_currency(witness, 6, b"MYCOIN", b"", b"", option::none(), ctx);
        transfer::public_freeze_object(metadata);
        coin::mint_and_transfer(&mut treasury, 1000000000000, tx_context::sender(ctx), ctx);
        transfer::public_transfer(treasury, tx_context::sender(ctx))
    }
}