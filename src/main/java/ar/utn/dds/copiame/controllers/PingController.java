package ar.utn.dds.copiame.controllers;

import io.javalin.http.Context;
import io.javalin.http.Handler;

public class PingController implements Handler {
    public PingController(){}
    @Override
    public void handle(Context ctx) {
        ctx.json("ping");
    }
}
