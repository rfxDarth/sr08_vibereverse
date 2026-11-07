.class Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;
.super Ljava/lang/Object;
.source "OtaActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;
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

    .line 566
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1

    .line 569
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$8;[BLandroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
