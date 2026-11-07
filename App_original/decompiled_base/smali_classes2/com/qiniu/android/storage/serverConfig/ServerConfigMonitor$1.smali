.class Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor$1;
.super Ljava/lang/Object;
.source "ServerConfigMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->startMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->access$000()Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->access$100(Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;)V

    return-void
.end method
