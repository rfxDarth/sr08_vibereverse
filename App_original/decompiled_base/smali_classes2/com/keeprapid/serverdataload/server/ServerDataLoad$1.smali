.class Lcom/keeprapid/serverdataload/server/ServerDataLoad$1;
.super Ljava/lang/Object;
.source "ServerDataLoad.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keeprapid/serverdataload/server/ServerDataLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keeprapid/serverdataload/server/ServerDataLoad;


# direct methods
.method constructor <init>(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$1;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 72
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "order"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$1;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-static {v1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->access$100(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 82
    const-string v1, "body"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$1;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-static {p1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->access$200(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;->onSendOrderSuccess(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
