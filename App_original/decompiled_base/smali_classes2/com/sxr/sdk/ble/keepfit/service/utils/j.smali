.class public Lcom/sxr/sdk/ble/keepfit/service/utils/j;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;
    }
.end annotation


# static fields
.field private static final h:I = 0x3

.field private static final i:J = 0x7530L


# instance fields
.field private a:I

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/Runnable;

.field private d:Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;

.field private e:Landroid/bluetooth/BluetoothGatt;

.field private f:Landroid/content/Context;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGatt;Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->a:I

    .line 18
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->f:Landroid/content/Context;

    .line 19
    iput-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->e:Landroid/bluetooth/BluetoothGatt;

    .line 20
    iput-object p4, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d:Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;

    .line 21
    iput-boolean p2, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->g:Z

    .line 22
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->b:Landroid/os/Handler;

    .line 24
    new-instance p1, Lcom/sxr/sdk/ble/keepfit/service/utils/j$a;

    invoke-direct {p1, p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j$a;-><init>(Lcom/sxr/sdk/ble/keepfit/service/utils/j;)V

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->c:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 3

    .line 2
    const-string v0, "callTargetFunction"

    const-string v1, "RetryManager"

    invoke-virtual {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->e:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "call "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times discoverServices"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/utils/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->e()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    const-string v0, "RetryManager"

    const-string v1, "cancelTimeoutTimer"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    const-string v0, "RetryManager"

    const-string v1, "handle timeout"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->a:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->f()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d:Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;

    const-string v1, "Try all failure\uff1atimeout"

    invoke-interface {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d:Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;->b()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    const-string v0, "RetryManager"

    const-string/jumbo v1, "startTimeoutTimer"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->b()V

    .line 8
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->a:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handle\uff0cprepare retry: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RetryManager"

    invoke-virtual {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->f()V

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d:Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Try all failure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;->a(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d:Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;

    invoke-interface {p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->g:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[debug]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->g:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[error]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    const-string v0, "RetryManager"

    const-string v1, "destroy"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->b()V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->g:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[info]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const-string v0, "RetryManager"

    const-string v1, "handle success"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->b()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->a:I

    .line 4
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d:Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;->a()V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->g:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[warn]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    const-string/jumbo v0, "startOperation"

    const-string v1, "RetryManager"

    invoke-virtual {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->a:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onRetryExhausted after "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "times"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->d:Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;

    invoke-interface {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j$b;->b()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->a:I

    .line 9
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->g()V

    .line 10
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/utils/j;->a()V

    return-void
.end method
