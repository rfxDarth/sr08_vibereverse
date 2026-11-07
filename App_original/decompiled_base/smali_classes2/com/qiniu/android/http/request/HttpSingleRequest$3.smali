.class Lcom/qiniu/android/http/request/HttpSingleRequest$3;
.super Ljava/lang/Object;
.source "HttpSingleRequest.java"

# interfaces
.implements Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/HttpSingleRequest;->retryRequest(Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

.field final synthetic val$checkCancelHandler:Lcom/qiniu/android/http/request/handler/CheckCancelHandler;

.field final synthetic val$completeHandler:Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;

.field final synthetic val$isAsync:Z

.field final synthetic val$progressHandler:Lcom/qiniu/android/http/request/handler/RequestProgressHandler;

.field final synthetic val$request:Lcom/qiniu/android/http/request/Request;

.field final synthetic val$server:Lcom/qiniu/android/http/request/IUploadServer;

.field final synthetic val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/handler/CheckCancelHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/Request;ZLcom/qiniu/android/http/request/handler/RequestProgressHandler;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    iput-object p2, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    iput-object p3, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$checkCancelHandler:Lcom/qiniu/android/http/request/handler/CheckCancelHandler;

    iput-object p4, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$completeHandler:Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;

    iput-object p5, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;

    iput-object p6, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$request:Lcom/qiniu/android/http/request/Request;

    iput-boolean p7, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$isAsync:Z

    iput-object p8, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$progressHandler:Lcom/qiniu/android/http/request/handler/RequestProgressHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lorg/json/JSONObject;)V
    .locals 10

    .line 118
    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    invoke-static {v1, v2, p1}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$300(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/ResponseInfo;)V

    if-eqz p2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v1}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$400(Lcom/qiniu/android/http/request/HttpSingleRequest;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$checkCancelHandler:Lcom/qiniu/android/http/request/handler/CheckCancelHandler;

    invoke-interface {v1}, Lcom/qiniu/android/http/request/handler/CheckCancelHandler;->checkCancel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->cancelled()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v3

    .line 126
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    invoke-static {v0, v3, v1, p2}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$500(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V

    .line 127
    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    iget-object v4, v3, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$completeHandler:Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$600(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 132
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->checkMaliciousResponse()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    invoke-virtual {v0}, Lcom/qiniu/android/http/request/IUploadServer;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/http/dns/DnsSource;->isCustom(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    invoke-virtual {v0}, Lcom/qiniu/android/http/request/IUploadServer;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/http/dns/DnsSource;->isDoh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    invoke-virtual {v0}, Lcom/qiniu/android/http/request/IUploadServer;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/http/dns/DnsSource;->isDnspod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v1, :cond_5

    .line 136
    invoke-virtual {v1}, Lcom/qiniu/android/http/ResponseInfo;->isNotQiniu()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    if-eqz p2, :cond_6

    .line 138
    const-string v0, "forsure"

    invoke-virtual {p2, v0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setHijacked(Ljava/lang/String;)V

    .line 140
    :try_start_0
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v0

    iget-object v6, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    invoke-virtual {v6}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->lookupBySafeDns(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setSyncDnsSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setSyncDnsError(Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-nez v2, :cond_a

    .line 146
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v0, v1}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$700(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    invoke-static {}, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->check()Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object v0

    if-eqz p2, :cond_7

    .line 149
    invoke-virtual {p2, v0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setConnectCheckMetrics(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V

    .line 151
    :cond_7
    invoke-static {v0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->isConnected(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v1, :cond_8

    .line 152
    const-string v0, ""

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "check origin statusCode:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/16 v1, -0x3f1

    .line 153
    invoke-static {v1, v0}, Lcom/qiniu/android/http/ResponseInfo;->errorInfo(ILjava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v1

    goto :goto_5

    :cond_9
    if-eqz p2, :cond_a

    if-nez v4, :cond_a

    .line 155
    const-string v0, "maybe"

    invoke-virtual {p2, v0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setHijacked(Ljava/lang/String;)V

    .line 157
    :try_start_1
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v0

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    invoke-virtual {v2}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->lookupBySafeDns(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setSyncDnsSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setSyncDnsError(Ljava/lang/String;)V

    .line 164
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    invoke-static {v0, v1, v2, p2}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$500(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "key:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v2}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$800(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/http/request/UploadRequestInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/qiniu/android/http/request/UploadRequestInfo;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " response:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;

    if-eqz v0, :cond_b

    invoke-interface {v0, v1, p3}, Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;->shouldRetry(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    .line 169
    invoke-static {v0}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$900(Lcom/qiniu/android/http/request/HttpSingleRequest;)I

    move-result v0

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v2}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$1000(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v2

    iget v2, v2, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v0, v2, :cond_b

    if-eqz v1, :cond_b

    .line 170
    invoke-virtual {v1}, Lcom/qiniu/android/http/ResponseInfo;->couldHostRetry()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 171
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v0, v3}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$912(Lcom/qiniu/android/http/request/HttpSingleRequest;I)I

    .line 174
    :try_start_2
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v0}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$1000(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v0

    iget v0, v0, Lcom/qiniu/android/storage/Configuration;->retryInterval:I

    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 177
    :catch_2
    iget-object v3, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    iget-object v4, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$request:Lcom/qiniu/android/http/request/Request;

    iget-object v5, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    iget-boolean v6, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$isAsync:Z

    iget-object v7, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;

    iget-object v8, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$progressHandler:Lcom/qiniu/android/http/request/handler/RequestProgressHandler;

    iget-object v9, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$completeHandler:Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;

    invoke-static/range {v3 .. v9}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$1100(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V

    goto :goto_6

    :cond_b
    move-object v3, v1

    .line 179
    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    iget-object v6, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$completeHandler:Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;

    move-object v5, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$600(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V

    :goto_6
    return-void
.end method
