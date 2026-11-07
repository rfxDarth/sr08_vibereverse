.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$2;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnClickivDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 565
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 569
    :try_start_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const-string p2, "OnClickivDisconnect setBindedInfo to unbond."

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object p1

    const/4 p2, 0x3

    iput p2, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    .line 571
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-interface {p1, v1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setBindedInfo(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 573
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$2;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnClickivDisconnect: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    return-void
.end method
