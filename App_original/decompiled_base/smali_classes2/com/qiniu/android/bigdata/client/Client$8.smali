.class Lcom/qiniu/android/bigdata/client/Client$8;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/qiniu/android/utils/StringMap$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/bigdata/client/Client;->syncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLjava/lang/String;Lokhttp3/RequestBody;)Lcom/qiniu/android/http/ResponseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/bigdata/client/Client;

.field final synthetic val$mb:Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;


# direct methods
.method constructor <init>(Lcom/qiniu/android/bigdata/client/Client;Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/qiniu/android/bigdata/client/Client$8;->this$0:Lcom/qiniu/android/bigdata/client/Client;

    iput-object p2, p0, Lcom/qiniu/android/bigdata/client/Client$8;->val$mb:Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/qiniu/android/bigdata/client/Client$8;->val$mb:Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;

    return-void
.end method
