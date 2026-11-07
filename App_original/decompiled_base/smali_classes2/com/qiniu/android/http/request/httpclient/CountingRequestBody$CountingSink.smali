.class public final Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;
.super Lokio/ForwardingSink;
.source "CountingRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CountingSink"
.end annotation


# instance fields
.field private bytesWritten:I

.field final synthetic this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;Lokio/Sink;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    .line 101
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->bytesWritten:I

    return-void
.end method

.method static synthetic access$200(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->bytesWritten:I

    return p0
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    invoke-static {v0}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->access$000(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)Lcom/qiniu/android/http/CancellationHandler;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    invoke-static {v0}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->access$100(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)Lcom/qiniu/android/http/ProgressHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    invoke-static {v0}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->access$000(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)Lcom/qiniu/android/http/CancellationHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    invoke-static {v0}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->access$000(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)Lcom/qiniu/android/http/CancellationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/qiniu/android/http/CancellationHandler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    new-instance p1, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    invoke-direct {p1}, Lcom/qiniu/android/http/CancellationHandler$CancellationException;-><init>()V

    throw p1

    .line 120
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 121
    iget p1, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->bytesWritten:I

    int-to-long v0, p1

    add-long/2addr v0, p2

    long-to-int p1, v0

    iput p1, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->bytesWritten:I

    .line 122
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->access$100(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)Lcom/qiniu/android/http/ProgressHandler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 123
    new-instance p1, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink$1;

    invoke-direct {p1, p0}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink$1;-><init>(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;)V

    invoke-static {p1}, Lcom/qiniu/android/utils/AsyncRun;->runInMain(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
