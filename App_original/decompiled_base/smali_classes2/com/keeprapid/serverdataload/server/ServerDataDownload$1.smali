.class Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;
.super Ljava/lang/Object;
.source "ServerDataDownload.java"

# interfaces
.implements Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keeprapid/serverdataload/server/ServerDataDownload;->downloadFitness()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

.field final synthetic val$progress:Lcom/keeprapid/serverdataload/model/Progress;


# direct methods
.method constructor <init>(Lcom/keeprapid/serverdataload/server/ServerDataDownload;Lcom/keeprapid/serverdataload/model/Progress;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    iput-object p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;->val$progress:Lcom/keeprapid/serverdataload/model/Progress;

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

    .line 93
    const-string v1, "100"

    if-ne p1, v0, :cond_1

    .line 94
    const-string/jumbo v0, "sync_key"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v2, Lcom/keeprapid/serverdataload/model/Key;

    invoke-direct {v2, v0}, Lcom/keeprapid/serverdataload/model/Key;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    invoke-static {v0}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->access$000(Lcom/keeprapid/serverdataload/server/ServerDataDownload;)Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0, v1, v2, p2}, Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;->onDownload(Ljava/lang/String;Lcom/keeprapid/serverdataload/model/Key;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;->val$progress:Lcom/keeprapid/serverdataload/model/Progress;

    iget v2, v2, Lcom/keeprapid/serverdataload/model/Key;->fitness:I

    iput v2, v0, Lcom/keeprapid/serverdataload/model/Progress;->start:I

    .line 100
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;->val$progress:Lcom/keeprapid/serverdataload/model/Progress;

    iget v0, v0, Lcom/keeprapid/serverdataload/model/Progress;->start:I

    iget-object v2, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;->val$progress:Lcom/keeprapid/serverdataload/model/Progress;

    iget v2, v2, Lcom/keeprapid/serverdataload/model/Progress;->end:I

    if-lt v0, v2, :cond_0

    .line 101
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;->val$progress:Lcom/keeprapid/serverdataload/model/Progress;

    const/4 v2, 0x1

    iput v2, v0, Lcom/keeprapid/serverdataload/model/Progress;->state:I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;->val$progress:Lcom/keeprapid/serverdataload/model/Progress;

    invoke-static {v0}, Lcom/keeprapid/serverdataload/util/OrmUtil;->updateObject(Ljava/lang/Object;)I

    .line 104
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    invoke-virtual {v0}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->downloadFitness()V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataDownload$1;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    invoke-static {v0}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->access$000(Lcom/keeprapid/serverdataload/server/ServerDataDownload;)Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;->afterDownload(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method
