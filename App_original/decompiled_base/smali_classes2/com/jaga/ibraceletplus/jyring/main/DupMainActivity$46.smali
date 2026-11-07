.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$46;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Lcom/keeprapid/serverdataload/server/ServerDataDownload$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->downloadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

.field final synthetic val$serverDataDownload:Lcom/keeprapid/serverdataload/server/ServerDataDownload;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Lcom/keeprapid/serverdataload/server/ServerDataDownload;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4830
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$46;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$46;->val$serverDataDownload:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterDownload(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 2

    .line 4844
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$46;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "afterDownload "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 4845
    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4846
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$46;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getKey(Ljava/lang/String;)Lcom/keeprapid/serverdataload/model/Key;

    move-result-object p1

    .line 4847
    iget p1, p1, Lcom/keeprapid/serverdataload/model/Key;->member:I

    if-nez p1, :cond_0

    .line 4848
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$46;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mid:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getKey(Ljava/lang/String;)Lcom/keeprapid/serverdataload/model/Key;

    move-result-object p1

    const/4 p2, -0x1

    .line 4849
    iput p2, p1, Lcom/keeprapid/serverdataload/model/Key;->member:I

    .line 4850
    invoke-static {p1}, Lcom/keeprapid/serverdataload/util/OrmUtil;->updateObject(Ljava/lang/Object;)I

    .line 4853
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$46;->val$serverDataDownload:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    invoke-virtual {p1}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->downloadMember()V

    return-void

    .line 4854
    :cond_1
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4855
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$46;->val$serverDataDownload:Lcom/keeprapid/serverdataload/server/ServerDataDownload;

    invoke-virtual {p1}, Lcom/keeprapid/serverdataload/server/ServerDataDownload;->downloadFitness()V

    :cond_2
    return-void
.end method

.method public onDownload(Ljava/lang/String;Lcom/keeprapid/serverdataload/model/Key;Lorg/json/JSONObject;)Z
    .locals 0

    .line 4834
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4835
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$46;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1, p3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5100(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 4836
    :cond_0
    const-string p2, "100"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4837
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$46;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1, p3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$5200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
