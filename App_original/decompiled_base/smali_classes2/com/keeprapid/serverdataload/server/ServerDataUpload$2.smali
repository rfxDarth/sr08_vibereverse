.class Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;
.super Ljava/lang/Object;
.source "ServerDataUpload.java"

# interfaces
.implements Lcom/keeprapid/serverdataload/server/ServerDataLoad$onSendOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keeprapid/serverdataload/server/ServerDataUpload;->uploadFitnessPart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;

.field final synthetic val$bFinish:Z

.field final synthetic val$lId:Ljava/util/ArrayList;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keeprapid/serverdataload/server/ServerDataUpload;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    iput-object p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->val$lId:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->val$bFinish:Z

    iput-object p4, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendOrderSuccess(ILorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0xc8

    .line 124
    const-string v1, "100"

    if-ne p1, v0, :cond_2

    .line 125
    const-string/jumbo v0, "sync_key"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v2, Lcom/keeprapid/serverdataload/model/Key;

    invoke-direct {v2, v0}, Lcom/keeprapid/serverdataload/model/Key;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    invoke-static {v0}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->access$000(Lcom/keeprapid/serverdataload/server/ServerDataUpload;)Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;

    move-result-object v0

    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->val$lId:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v3, v2}, Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;->onUpload(Ljava/lang/String;Ljava/util/List;Lcom/keeprapid/serverdataload/model/Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v3, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    invoke-static {v3}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->access$100(Lcom/keeprapid/serverdataload/server/ServerDataUpload;)Lcom/keeprapid/serverdataload/server/ServerDataLoad;

    move-result-object v3

    iget-object v3, v3, Lcom/keeprapid/serverdataload/server/ServerDataLoad;->mid:Ljava/lang/String;

    invoke-static {v3}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getKey(Ljava/lang/String;)Lcom/keeprapid/serverdataload/model/Key;

    move-result-object v3

    .line 131
    iget v2, v2, Lcom/keeprapid/serverdataload/model/Key;->fitness:I

    iput v2, v3, Lcom/keeprapid/serverdataload/model/Key;->fitness:I

    .line 132
    invoke-static {v3}, Lcom/keeprapid/serverdataload/util/OrmUtil;->updateObject(Ljava/lang/Object;)I

    .line 135
    :cond_0
    iget-boolean v2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->val$bFinish:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 136
    iget-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    invoke-static {p1}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->access$208(Lcom/keeprapid/serverdataload/server/ServerDataUpload;)I

    .line 137
    iget-object p1, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    iget-object p2, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->val$type:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->access$300(Lcom/keeprapid/serverdataload/server/ServerDataUpload;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    invoke-static {v0}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->access$000(Lcom/keeprapid/serverdataload/server/ServerDataUpload;)Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;->afterUpload(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/keeprapid/serverdataload/server/ServerDataUpload$2;->this$0:Lcom/keeprapid/serverdataload/server/ServerDataUpload;

    invoke-static {v0}, Lcom/keeprapid/serverdataload/server/ServerDataUpload;->access$000(Lcom/keeprapid/serverdataload/server/ServerDataUpload;)Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Lcom/keeprapid/serverdataload/server/ServerDataUpload$OnUploadListener;->afterUpload(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method
