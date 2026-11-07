.class Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$6;
.super Ljava/lang/Object;
.source "OtaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->reconnectAfterOta()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 493
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 497
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->connectBt(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 499
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reconnectAfterOta connectBt remote exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method
