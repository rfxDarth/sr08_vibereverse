.class Lcom/keeprapid/serverdataload/server/ServerDataDownload$2;
.super Ljava/lang/Object;
.source "ServerDataDownload.java"

# interfaces
.implements Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keeprapid/serverdataload/server/ServerDataDownload;->downloadBody()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keeprapid/serverdataload/server/ServerDataDownload;


# direct methods
.method constructor <init>(Lcom/keeprapid/serverdataload/server/ServerDataDownload;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$2;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendOrderSuccess(ILorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 124
    const-string/jumbo p1, "sync_key"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$2;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    invoke-static {v0}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->access$000(Lcom/keeprapid/serverdataload/server/ServerDataDownload;)Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;

    move-result-object v0

    new-instance v1, Lcom/keeprapid/serverdataload/model/Key;

    invoke-direct {v1, p1}, Lcom/keeprapid/serverdataload/model/Key;-><init>(Ljava/lang/String;)V

    const-string p1, "101"

    invoke-interface {v0, p1, v1, p2}, Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;->onDownload(Ljava/lang/String;Lcom/keeprapid/serverdataload/model/Key;Lorg/json/JSONObject;)Z

    :cond_0
    return-void
.end method
