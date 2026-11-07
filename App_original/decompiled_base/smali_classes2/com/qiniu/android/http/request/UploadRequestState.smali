.class public Lcom/qiniu/android/http/request/UploadRequestState;
.super Ljava/lang/Object;
.source "UploadRequestState.java"


# instance fields
.field private couldUseHttp3:Z

.field private isUseOldServer:Z

.field private isUserCancel:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Lcom/qiniu/android/http/request/UploadRequestState;
    .locals 2

    .line 65
    new-instance v0, Lcom/qiniu/android/http/request/UploadRequestState;

    invoke-direct {v0}, Lcom/qiniu/android/http/request/UploadRequestState;-><init>()V

    .line 66
    iget-boolean v1, p0, Lcom/qiniu/android/http/request/UploadRequestState;->isUseOldServer:Z

    iput-boolean v1, v0, Lcom/qiniu/android/http/request/UploadRequestState;->isUseOldServer:Z

    .line 67
    iget-boolean v1, p0, Lcom/qiniu/android/http/request/UploadRequestState;->isUserCancel:Z

    iput-boolean v1, v0, Lcom/qiniu/android/http/request/UploadRequestState;->isUserCancel:Z

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/qiniu/android/http/request/UploadRequestState;->clone()Lcom/qiniu/android/http/request/UploadRequestState;

    move-result-object v0

    return-object v0
.end method

.method public couldUseHttp3()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/qiniu/android/http/request/UploadRequestState;->couldUseHttp3:Z

    return v0
.end method

.method public isUseOldServer()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/qiniu/android/http/request/UploadRequestState;->isUseOldServer:Z

    return v0
.end method

.method isUserCancel()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/qiniu/android/http/request/UploadRequestState;->isUserCancel:Z

    return v0
.end method

.method setCouldUseHttp3(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/qiniu/android/http/request/UploadRequestState;->couldUseHttp3:Z

    return-void
.end method

.method public setUseOldServer(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/qiniu/android/http/request/UploadRequestState;->isUseOldServer:Z

    return-void
.end method

.method setUserCancel(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/qiniu/android/http/request/UploadRequestState;->isUserCancel:Z

    return-void
.end method
