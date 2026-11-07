.class public abstract Lcom/qiniu/android/http/request/IRequestClient;
.super Ljava/lang/Object;
.source "IRequestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/request/IRequestClient$Options;,
        Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;,
        Lcom/qiniu/android/http/request/IRequestClient$Progress;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "customized"

    return-object v0
.end method

.method public abstract request(Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IRequestClient$Options;Lcom/qiniu/android/http/request/IRequestClient$Progress;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V
.end method
