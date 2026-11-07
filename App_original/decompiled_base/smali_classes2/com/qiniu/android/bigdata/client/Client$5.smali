.class Lcom/qiniu/android/bigdata/client/Client$5;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/bigdata/client/Client;->asyncSend(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/bigdata/client/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/bigdata/client/Client;

.field final synthetic val$complete:Lcom/qiniu/android/bigdata/client/CompletionHandler;

.field final synthetic val$totalSize:J

.field final synthetic val$upToken:Lcom/qiniu/android/storage/UpToken;


# direct methods
.method constructor <init>(Lcom/qiniu/android/bigdata/client/Client;Lcom/qiniu/android/bigdata/client/CompletionHandler;Lcom/qiniu/android/storage/UpToken;J)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/qiniu/android/bigdata/client/Client$5;->this$0:Lcom/qiniu/android/bigdata/client/Client;

    iput-object p2, p0, Lcom/qiniu/android/bigdata/client/Client$5;->val$complete:Lcom/qiniu/android/bigdata/client/CompletionHandler;

    iput-object p3, p0, Lcom/qiniu/android/bigdata/client/Client$5;->val$upToken:Lcom/qiniu/android/storage/UpToken;

    iput-wide p4, p0, Lcom/qiniu/android/bigdata/client/Client$5;->val$totalSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 274
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 277
    instance-of v0, p2, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    if-eqz v0, :cond_0

    const/4 p1, -0x2

    goto :goto_0

    .line 279
    :cond_0
    instance-of v0, p2, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1

    const/16 p1, -0x3eb

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 281
    const-string v0, "Broken pipe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, -0x3ed

    goto :goto_0

    .line 283
    :cond_2
    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_3

    const/16 p1, -0x3e9

    goto :goto_0

    .line 285
    :cond_3
    instance-of p1, p2, Ljava/net/ConnectException;

    if-eqz p1, :cond_4

    const/16 p1, -0x3ec

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    .line 289
    :goto_0
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p1, v0, v0, p2}, Lcom/qiniu/android/http/ResponseInfo;->create(Lcom/qiniu/android/http/request/Request;ILjava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    .line 290
    iget-object p2, p0, Lcom/qiniu/android/bigdata/client/Client$5;->val$complete:Lcom/qiniu/android/bigdata/client/CompletionHandler;

    invoke-interface {p2, p1, v0}, Lcom/qiniu/android/bigdata/client/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;

    .line 296
    iget-object v1, p1, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;->ip:Ljava/lang/String;

    iget-wide v2, p1, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;->duration:J

    iget-object v4, p0, Lcom/qiniu/android/bigdata/client/Client$5;->val$upToken:Lcom/qiniu/android/storage/UpToken;

    iget-wide v5, p0, Lcom/qiniu/android/bigdata/client/Client$5;->val$totalSize:J

    iget-object v7, p0, Lcom/qiniu/android/bigdata/client/Client$5;->val$complete:Lcom/qiniu/android/bigdata/client/CompletionHandler;

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/qiniu/android/bigdata/client/Client;->access$100(Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/bigdata/client/CompletionHandler;)V

    return-void
.end method
