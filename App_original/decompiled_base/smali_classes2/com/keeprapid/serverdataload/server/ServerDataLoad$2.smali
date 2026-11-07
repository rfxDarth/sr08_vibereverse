.class Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;
.super Ljava/lang/Object;
.source "ServerDataLoad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keeprapid/serverdataload/server/ServerDataLoad;->sendOrderThread(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$param:Lorg/json/JSONObject;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keeprapid/serverdataload/server/ServerDataLoad;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iput-object p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;->val$cmd:Ljava/lang/String;

    iput-object p4, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;->val$param:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;->val$cmd:Ljava/lang/String;

    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;->val$param:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->access$300(Lcom/keeprapid/serverdataload/server/ServerDataLoad;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 101
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "order"

    iget-object v2, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;->val$cmd:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 104
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 105
    iget-object v1, p0, Lcom/keeprapid/serverdataload/server/ServerDataLoad$2;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    invoke-static {v1}, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->access$400(Lcom/keeprapid/serverdataload/server/ServerDataLoad;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
