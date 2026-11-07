.class public Lcom/qiniu/android/http/metrics/UploadMetrics;
.super Ljava/lang/Object;
.source "UploadMetrics.java"


# instance fields
.field protected endDate:Ljava/util/Date;

.field protected startDate:Ljava/util/Date;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    .line 22
    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->endDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->endDate:Ljava/util/Date;

    return-void
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public start()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    return-void
.end method

.method public totalElapsedTime()J
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->endDate:Ljava/util/Date;

    if-nez v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v0, v1}, Lcom/qiniu/android/utils/Utils;->dateDuration(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
