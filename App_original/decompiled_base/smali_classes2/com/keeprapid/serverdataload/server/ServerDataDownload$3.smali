.class Lcom/keeprapid/serverdataload/server/ServerDataDownload$3;
.super Ljava/lang/Object;
.source "ServerDataDownload.java"

# interfaces
.implements Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keeprapid/serverdataload/server/ServerDataDownload;->downloadMember()V
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

    .line 138
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$3;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

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

    .line 141
    const-string v1, "1"

    if-ne p1, v0, :cond_0

    .line 142
    const-string/jumbo v0, "sync_key"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v2, Lcom/keeprapid/serverdataload/model/Key;

    invoke-direct {v2, v0}, Lcom/keeprapid/serverdataload/model/Key;-><init>(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$3;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    invoke-static {v0}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->access$000(Lcom/keeprapid/serverdataload/server/ServerDataDownload;)Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0, v1, v2, p2}, Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;->onDownload(Ljava/lang/String;Lcom/keeprapid/serverdataload/model/Key;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$3;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    invoke-static {v0}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->access$100(Lcom/keeprapid/serverdataload/server/ServerDataDownload;)Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    move-result-object v0

    iget-object v0, v0, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    invoke-static {v0}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getKey(Ljava/lang/String;)Lcom/keeprapid/serverdataload/model/Key;

    move-result-object v0

    .line 148
    iget v2, v2, Lcom/keeprapid/serverdataload/model/Key;->member:I

    iput v2, v0, Lcom/keeprapid/serverdataload/model/Key;->member:I

    .line 149
    invoke-static {v0}, Lcom/keeprapid/serverdataload/util/OrmUtil;->updateObject(Ljava/lang/Object;)I

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$3;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    invoke-static {v0}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->access$000(Lcom/keeprapid/serverdataload/server/ServerDataDownload;)Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;->afterDownload(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method
