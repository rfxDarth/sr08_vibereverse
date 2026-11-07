.class Lcom/qiniu/android/collect/UploadInfoReporter$1;
.super Ljava/lang/Object;
.source "UploadInfoReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/collect/UploadInfoReporter;->report(Lcom/qiniu/android/collect/ReportItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

.field final synthetic val$jsonString:Ljava/lang/String;

.field final synthetic val$tokenString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qiniu/android/collect/UploadInfoReporter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/qiniu/android/collect/UploadInfoReporter$1;->this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

    iput-object p2, p0, Lcom/qiniu/android/collect/UploadInfoReporter$1;->val$jsonString:Ljava/lang/String;

    iput-object p3, p0, Lcom/qiniu/android/collect/UploadInfoReporter$1;->val$tokenString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "up log:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/collect/UploadInfoReporter$1;->val$jsonString:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter$1;->this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

    iget-object v1, p0, Lcom/qiniu/android/collect/UploadInfoReporter$1;->val$jsonString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qiniu/android/collect/UploadInfoReporter;->access$000(Lcom/qiniu/android/collect/UploadInfoReporter;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter$1;->this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

    iget-object v1, p0, Lcom/qiniu/android/collect/UploadInfoReporter$1;->val$tokenString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qiniu/android/collect/UploadInfoReporter;->access$100(Lcom/qiniu/android/collect/UploadInfoReporter;Ljava/lang/String;)V

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
