.class Lcom/qiniu/android/bigdata/client/Client$7;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/qiniu/android/utils/StringMap$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/bigdata/client/Client;->send(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;)Lcom/qiniu/android/http/ResponseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/bigdata/client/Client;

.field final synthetic val$requestBuilder:Lokhttp3/Request$Builder;


# direct methods
.method constructor <init>(Lcom/qiniu/android/bigdata/client/Client;Lokhttp3/Request$Builder;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/qiniu/android/bigdata/client/Client$7;->this$0:Lcom/qiniu/android/bigdata/client/Client;

    iput-object p2, p0, Lcom/qiniu/android/bigdata/client/Client$7;->val$requestBuilder:Lokhttp3/Request$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/qiniu/android/bigdata/client/Client$7;->val$requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method
