.class Lcom/jaga/ibraceletplus/jyring/ota/Callback$2;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/Callback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/Callback;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback$2;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback$2;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/Callback;

    const-string v1, "delay 2000ms for start downloading ota file."

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->saveLog(Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_PROCEEDING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback$2;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/Callback;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method
