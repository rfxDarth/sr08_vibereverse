.class Lcom/sxr/sdk/ble/keepfit/service/OtaDial$a;
.super Ljava/lang/Object;
.source "OtaDial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sxr/sdk/ble/keepfit/service/OtaDial;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/OtaDial;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial$a;->a:Lcom/sxr/sdk/ble/keepfit/service/OtaDial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial$a;->a:Lcom/sxr/sdk/ble/keepfit/service/OtaDial;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a(Lcom/sxr/sdk/ble/keepfit/service/OtaDial;)Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->c()V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial$a;->a:Lcom/sxr/sdk/ble/keepfit/service/OtaDial;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->b()V

    return-void
.end method
