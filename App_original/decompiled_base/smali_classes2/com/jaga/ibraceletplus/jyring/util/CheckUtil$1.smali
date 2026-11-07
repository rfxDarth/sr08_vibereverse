.class Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$1;
.super Ljava/lang/Object;
.source "CheckUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkBluetooth(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$1;->val$mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$1;->val$context:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "checkBluetooth: sdk "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->saveLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_0

    .line 45
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$1;->val$context:Landroid/content/Context;

    const p2, 0x7f13036f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_1

    .line 49
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$1;->val$context:Landroid/content/Context;

    const-string p2, "checkBluetooth: start bt enable intent."

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->saveLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$1;->val$context:Landroid/content/Context;

    const-string p2, "checkBluetooth: enable BluetoothAdapter."

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->saveLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$1;->val$mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void
.end method
