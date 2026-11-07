.class Lcom/sxr/sdk/ble/keepfit/service/Ota$c;
.super Ljava/lang/Object;
.source "Ota.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sxr/sdk/ble/keepfit/service/Ota;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/Ota;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$c;->a:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$c;->a:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->c()V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota$c;->a:Lcom/sxr/sdk/ble/keepfit/service/Ota;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c()V

    return-void
.end method
