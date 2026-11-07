.class public interface abstract Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;
.super Ljava/lang/Object;
.source "ServerDataLoad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keeprapid/serverdataload/server/ServerDataLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onSendOrderListener"
.end annotation


# virtual methods
.method public abstract onSendOrderSuccess(ILorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
