.class Lcom/keeprapid/serverdataload/server/ServerDataUpload$1;
.super Ljava/lang/Object;
.source "ServerDataUpload.java"

# interfaces
.implements Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keeprapid/serverdataload/server/ServerDataUpload;->uploadFitness()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;


# direct methods
.method constructor <init>(Lcom/keeprapid/serverdataload/server/ServerDataUpload;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$1;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendOrderSuccess(ILorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0xc8

    const/4 v1, 0x0

    .line 70
    const-string v2, "100"

    if-ne p1, v0, :cond_1

    .line 71
    const-string p1, "maxcount"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 73
    iget-object p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$1;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    const-string v0, "fitness"

    invoke-virtual {p2, v0, p1}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->uploadFitness(Ljava/lang/String;I)V

    return-void

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$1;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    invoke-static {p1}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->access$000(Lcom/keeprapid/serverdataload/server/ServerDataUpload;)Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v2, v1, p2}, Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;->afterUpload(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$1;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    invoke-static {p1}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->access$000(Lcom/keeprapid/serverdataload/server/ServerDataUpload;)Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v2, v1, p2}, Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;->afterUpload(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method
