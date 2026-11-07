.class final Lcom/google/zxing/camera/AutoFocusManager$AutoFocusTask;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/camera/AutoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/camera/AutoFocusManager;


# direct methods
.method private constructor <init>(Lcom/google/zxing/camera/AutoFocusManager;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/zxing/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/google/zxing/camera/AutoFocusManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/camera/AutoFocusManager;Lcom/google/zxing/camera/AutoFocusManager$1;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/zxing/camera/AutoFocusManager$AutoFocusTask;-><init>(Lcom/google/zxing/camera/AutoFocusManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 108
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :catch_0
    iget-object p1, p0, Lcom/google/zxing/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/google/zxing/camera/AutoFocusManager;

    monitor-enter p1

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/google/zxing/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/google/zxing/camera/AutoFocusManager;

    invoke-static {v0}, Lcom/google/zxing/camera/AutoFocusManager;->access$100(Lcom/google/zxing/camera/AutoFocusManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/zxing/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/google/zxing/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/camera/AutoFocusManager;->start()V

    .line 117
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
