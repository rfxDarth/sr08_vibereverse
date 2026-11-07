.class Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor$2;
.super Ljava/lang/Object;
.source "ServerConfigMonitor.java"

# interfaces
.implements Lcom/qiniu/android/storage/serverConfig/ServerConfigSynchronizer$ServerConfigHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->monitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor$2;->this$0:Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/qiniu/android/storage/serverConfig/ServerConfig;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor$2;->this$0:Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;

    invoke-static {v0, p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->access$200(Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;Lcom/qiniu/android/storage/serverConfig/ServerConfig;)V

    .line 111
    iget-object v0, p0, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor$2;->this$0:Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;

    invoke-static {v0}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->access$300(Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;)Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qiniu/android/storage/serverConfig/ServerConfigCache;->setConfig(Lcom/qiniu/android/storage/serverConfig/ServerConfig;)V

    return-void
.end method
