.class Lcom/sxr/sdk/ble/keepfit/service/utils/j$a;
.super Ljava/lang/Object;
.source "RetryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/utils/j;-><init>(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGatt;Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sxr/sdk/ble/keepfit/service/utils/j;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/utils/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j$a;->a:Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j$a;->a:Lcom/sxr/sdk/ble/keepfit/service/utils/j;

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->a(Lcom/sxr/sdk/ble/keepfit/service/utils/j;)V

    return-void
.end method
