.class public Lcom/google/zxing/common/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/common/InactivityTimer$InactivityAsyncTask;,
        Lcom/google/zxing/common/InactivityTimer$PowerStatusReceiver;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "InactivityTimer"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private final powerStatusReceiver:Landroid/content/BroadcastReceiver;

.field private registered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/zxing/common/InactivityTimer;->activity:Landroid/app/Activity;

    .line 57
    new-instance p1, Lcom/google/zxing/common/InactivityTimer$PowerStatusReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/zxing/common/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/google/zxing/common/InactivityTimer;Lcom/google/zxing/common/InactivityTimer$1;)V

    iput-object p1, p0, Lcom/google/zxing/common/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/google/zxing/common/InactivityTimer;->registered:Z

    .line 59
    invoke-virtual {p0}, Lcom/google/zxing/common/InactivityTimer;->onActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/zxing/common/InactivityTimer;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/zxing/common/InactivityTimer;->cancel()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/zxing/common/InactivityTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/zxing/common/InactivityTimer;)Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/zxing/common/InactivityTimer;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/common/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/google/zxing/common/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized onActivity()V
    .locals 2

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/google/zxing/common/InactivityTimer;->cancel()V

    .line 67
    new-instance v0, Lcom/google/zxing/common/InactivityTimer$InactivityAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/common/InactivityTimer$InactivityAsyncTask;-><init>(Lcom/google/zxing/common/InactivityTimer;Lcom/google/zxing/common/InactivityTimer$1;)V

    iput-object v0, p0, Lcom/google/zxing/common/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;

    .line 68
    invoke-static {v0}, Lcom/google/zxing/common/Runnable;->execAsync(Landroid/os/AsyncTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onPause()V
    .locals 2

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-direct {p0}, Lcom/google/zxing/common/InactivityTimer;->cancel()V

    .line 73
    iget-boolean v0, p0, Lcom/google/zxing/common/InactivityTimer;->registered:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/zxing/common/InactivityTimer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/zxing/common/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/google/zxing/common/InactivityTimer;->registered:Z

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Lcom/google/zxing/common/InactivityTimer;->TAG:Ljava/lang/String;

    const-string v1, "PowerStatusReceiver was never registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 4

    monitor-enter p0

    .line 83
    :try_start_0
    sget-object v0, Lcom/google/zxing/common/InactivityTimer;->TAG:Ljava/lang/String;

    const-string v1, "here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v1, p0, Lcom/google/zxing/common/InactivityTimer;->registered:Z

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "PowerStatusReceiver was already registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/InactivityTimer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/zxing/common/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/google/zxing/common/InactivityTimer;->registered:Z

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/InactivityTimer;->onActivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/google/zxing/common/InactivityTimer;->cancel()V

    return-void
.end method
