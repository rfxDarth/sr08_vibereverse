.class final Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;
.super Ljava/lang/Object;
.source "TweetTextLinkifier.java"


# static fields
.field static final QUOTED_STATUS_URL:Ljava/util/regex/Pattern;

.field static final VINE_URL:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "^https?://twitter\\.com(/#!)?/\\w+/status/\\d+$"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->QUOTED_STATUS_URL:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "^https?://vine\\.co(/#!)?/v/\\w+$"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->VINE_URL:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addUrlEntities(Landroid/text/SpannableStringBuilder;Ljava/util/List;Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;Lcom/twitter/sdk/android/tweetui/LinkClickListener;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            "Lcom/twitter/sdk/android/tweetui/LinkClickListener;",
            "II)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 141
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 147
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    .line 148
    iget v1, v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    sub-int/2addr v1, v0

    .line 149
    iget v2, v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    sub-int/2addr v2, v0

    if-ltz v1, :cond_1

    .line 150
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-gt v2, v3, :cond_1

    if-eqz p2, :cond_2

    .line 154
    iget v3, p2, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    iget v4, v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    if-ne v3, v4, :cond_2

    .line 155
    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_1
    move-object v6, p3

    move v4, p4

    move v3, p5

    goto :goto_1

    .line 159
    :cond_2
    iget-object v3, v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->displayUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    iget-object v3, v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->displayUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 161
    iget-object v3, v7, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->displayUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    sub-int v3, v2, v3

    sub-int v8, v2, v3

    add-int/2addr v0, v3

    .line 165
    new-instance v2, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$2;

    const/4 v5, 0x0

    move-object v6, p3

    move v4, p4

    move v3, p5

    invoke-direct/range {v2 .. v7}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$2;-><init>(IIZLcom/twitter/sdk/android/tweetui/LinkClickListener;Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)V

    const/16 p3, 0x21

    .line 173
    invoke-virtual {p0, v2, v1, v8, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    move p5, v3

    move p4, v4

    move-object p3, v6

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method static getEntityToStrip(Ljava/lang/String;Ljava/util/List;ZZ)Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;ZZ)",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;"
        }
    .end annotation

    .line 181
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 183
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    .line 184
    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->stripLtrMarker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->isPhotoEntity(Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p2, :cond_1

    .line 185
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->isQuotedStatus(Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    .line 186
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->isVineCard(Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return-object p1

    :cond_3
    return-object v1
.end method

.method static isPhotoEntity(Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)Z
    .locals 1

    .line 202
    instance-of v0, p0, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;->type:Ljava/lang/String;

    .line 203
    const-string v0, "photo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isQuotedStatus(Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)Z
    .locals 1

    .line 207
    sget-object v0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->QUOTED_STATUS_URL:Ljava/util/regex/Pattern;

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->expandedUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method static isVineCard(Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)Z
    .locals 1

    .line 211
    sget-object v0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->VINE_URL:Ljava/util/regex/Pattern;

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->expandedUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method static linkifyUrls(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;Lcom/twitter/sdk/android/tweetui/LinkClickListener;IIZZ)Ljava/lang/CharSequence;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    return-object p0

    .line 65
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->urlEntities:Ljava/util/List;

    .line 67
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mediaEntities:Ljava/util/List;

    .line 73
    invoke-static {v1, v2}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->mergeAndSortEntities(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 74
    iget-object p0, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    invoke-static {p0, v1, p4, p5}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->getEntityToStrip(Ljava/lang/String;Ljava/util/List;ZZ)Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 77
    invoke-static/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->addUrlEntities(Landroid/text/SpannableStringBuilder;Ljava/util/List;Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;Lcom/twitter/sdk/android/tweetui/LinkClickListener;II)V

    .line 80
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static mergeAndSortEntities(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 109
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    new-instance p0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$1;

    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method static stripLtrMarker(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x200e

    .line 194
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 87
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 89
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method
