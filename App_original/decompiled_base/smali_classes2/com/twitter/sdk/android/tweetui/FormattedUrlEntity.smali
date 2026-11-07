.class Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
.super Ljava/lang/Object;
.source "FormattedUrlEntity.java"


# instance fields
.field final displayUrl:Ljava/lang/String;

.field end:I

.field final expandedUrl:Ljava/lang/String;

.field start:I

.field final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/models/UrlEntity;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/models/UrlEntity;->getStart()I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    .line 31
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/models/UrlEntity;->getEnd()I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    .line 32
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/UrlEntity;->displayUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->displayUrl:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/UrlEntity;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->url:Ljava/lang/String;

    .line 34
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/UrlEntity;->expandedUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->expandedUrl:Ljava/lang/String;

    return-void
.end method
