.class Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$1;
.super Ljava/lang/Object;
.source "FragmentPerson.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->OnClickllTargetStep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicker(III)V
    .locals 1

    .line 128
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvTargetStep:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "000"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p2

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "P_GOAL_STEP"

    invoke-virtual {p2, v0, p3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    :try_start_0
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    if-eqz p2, :cond_0

    .line 132
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {p2, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->setGoalStep(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 134
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
