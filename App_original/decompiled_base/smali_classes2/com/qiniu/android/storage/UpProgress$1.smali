.class Lcom/qiniu/android/storage/UpProgress$1;
.super Ljava/lang/Object;
.source "UpProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UpProgress;->notify(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/UpProgress;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$totalBytes:J

.field final synthetic val$uploadBytes:J


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UpProgress;Ljava/lang/String;JJ)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/qiniu/android/storage/UpProgress$1;->this$0:Lcom/qiniu/android/storage/UpProgress;

    iput-object p2, p0, Lcom/qiniu/android/storage/UpProgress$1;->val$key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/qiniu/android/storage/UpProgress$1;->val$uploadBytes:J

    iput-wide p5, p0, Lcom/qiniu/android/storage/UpProgress$1;->val$totalBytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/UpProgress$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " progress uploadBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qiniu/android/storage/UpProgress$1;->val$uploadBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " totalBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qiniu/android/storage/UpProgress$1;->val$totalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/qiniu/android/storage/UpProgress$1;->this$0:Lcom/qiniu/android/storage/UpProgress;

    invoke-static {v0}, Lcom/qiniu/android/storage/UpProgress;->access$000(Lcom/qiniu/android/storage/UpProgress;)Lcom/qiniu/android/storage/UpProgressHandler;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qiniu/android/storage/UpProgressBytesHandler;

    iget-object v2, p0, Lcom/qiniu/android/storage/UpProgress$1;->val$key:Ljava/lang/String;

    iget-wide v3, p0, Lcom/qiniu/android/storage/UpProgress$1;->val$uploadBytes:J

    iget-wide v5, p0, Lcom/qiniu/android/storage/UpProgress$1;->val$totalBytes:J

    invoke-interface/range {v1 .. v6}, Lcom/qiniu/android/storage/UpProgressBytesHandler;->progress(Ljava/lang/String;JJ)V

    return-void
.end method
