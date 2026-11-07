.class Lcom/qiniu/android/collect/UploadInfoReporter$2;
.super Ljava/lang/Object;
.source "UploadInfoReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/collect/UploadInfoReporter;->reportToServerIfNeeded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

.field final synthetic val$tokenString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qiniu/android/collect/UploadInfoReporter;Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/qiniu/android/collect/UploadInfoReporter$2;->this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

    iput-object p2, p0, Lcom/qiniu/android/collect/UploadInfoReporter$2;->val$tokenString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/qiniu/android/collect/UploadInfoReporter$2;->this$0:Lcom/qiniu/android/collect/UploadInfoReporter;

    iget-object v1, p0, Lcom/qiniu/android/collect/UploadInfoReporter$2;->val$tokenString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qiniu/android/collect/UploadInfoReporter;->access$100(Lcom/qiniu/android/collect/UploadInfoReporter;Ljava/lang/String;)V

    return-void
.end method
