.class public final Lcom/qiniu/android/utils/AsyncRun;
.super Ljava/lang/Object;
.source "AsyncRun.java"


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;

.field private static final mainThreadHandler:Landroid/os/Handler;

.field private static maxThreadPoolSize:I

.field private static threadPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/qiniu/android/utils/AsyncRun;->mainThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 24
    sput v0, Lcom/qiniu/android/utils/AsyncRun;->threadPoolSize:I

    const/4 v0, 0x6

    .line 25
    sput v0, Lcom/qiniu/android/utils/AsyncRun;->maxThreadPoolSize:I

    .line 26
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/qiniu/android/utils/AsyncRun;->threadPoolSize:I

    sget v3, Lcom/qiniu/android/utils/AsyncRun;->maxThreadPoolSize:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/qiniu/android/utils/AsyncRun;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .line 20
    sget-object v0, Lcom/qiniu/android/utils/AsyncRun;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 20
    sget-object v0, Lcom/qiniu/android/utils/AsyncRun;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static delayTimerTask(ILjava/util/TimerTask;)V
    .locals 3

    .line 90
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    int-to-long v1, p0

    .line 91
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public static runInBack(ILjava/lang/Runnable;)V
    .locals 1

    .line 80
    new-instance v0, Lcom/qiniu/android/utils/AsyncRun$2;

    invoke-direct {v0, p1}, Lcom/qiniu/android/utils/AsyncRun$2;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lcom/qiniu/android/utils/AsyncRun;->delayTimerTask(ILjava/util/TimerTask;)V

    return-void
.end method

.method public static runInBack(Ljava/lang/Runnable;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/qiniu/android/utils/AsyncRun;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static runInMain(ILjava/lang/Runnable;)V
    .locals 1

    .line 54
    new-instance v0, Lcom/qiniu/android/utils/AsyncRun$1;

    invoke-direct {v0, p1}, Lcom/qiniu/android/utils/AsyncRun$1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lcom/qiniu/android/utils/AsyncRun;->delayTimerTask(ILjava/util/TimerTask;)V

    return-void
.end method

.method public static runInMain(Ljava/lang/Runnable;)V
    .locals 2

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 40
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/qiniu/android/utils/AsyncRun;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
