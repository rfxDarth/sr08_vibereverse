.class public Lorg/apache/commons/net/nntp/Threader;
.super Ljava/lang/Object;
.source "Threader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildContainer(Lorg/apache/commons/net/nntp/Threadable;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/Threadable;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/NntpThreadContainer;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadId()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 47
    iget-object v3, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v3, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<Bogus-id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_0

    .line 54
    :cond_0
    iput-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 60
    new-instance v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    invoke-direct {v1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;-><init>()V

    .line 61
    iput-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 62
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadReferences()[Ljava/lang/String;

    move-result-object p1

    .line 70
    array-length v0, p1

    const/4 v3, 0x0

    move-object v4, v2

    :goto_1
    if-ge v3, v0, :cond_5

    aget-object v5, p1, v3

    .line 71
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v6, :cond_3

    .line 75
    new-instance v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    invoke-direct {v6}, Lorg/apache/commons/net/nntp/NntpThreadContainer;-><init>()V

    .line 76
    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v4, :cond_4

    .line 82
    iget-object v5, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v5, :cond_4

    if-eq v4, v6, :cond_4

    invoke-virtual {v6, v4}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->findChild(Lorg/apache/commons/net/nntp/NntpThreadContainer;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 84
    iput-object v4, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 85
    iget-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v5, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 86
    iput-object v6, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-object v4, v6

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_7

    if-eq v4, v1, :cond_6

    .line 94
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->findChild(Lorg/apache/commons/net/nntp/NntpThreadContainer;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move-object v4, v2

    .line 101
    :cond_7
    iget-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz p1, :cond_c

    .line 104
    iget-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object p1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    move-object p2, v2

    :goto_2
    if-eqz p1, :cond_9

    if-ne p1, v1, :cond_8

    goto :goto_3

    :cond_8
    iget-object p2, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_2

    :cond_9
    :goto_3
    if-eqz p1, :cond_b

    if-nez p2, :cond_a

    .line 116
    iget-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object p2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object p2, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_4

    .line 118
    :cond_a
    iget-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object p1, p2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 121
    :goto_4
    iput-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 122
    iput-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_5

    .line 111
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Didnt find "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in parent "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    if-eqz v4, :cond_d

    .line 127
    iput-object v4, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 128
    iget-object p1, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 129
    iput-object v1, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :cond_d
    return-void
.end method

.method private findRootSet(Ljava/util/HashMap;)Lorg/apache/commons/net/nntp/NntpThreadContainer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/NntpThreadContainer;",
            ">;)",
            "Lorg/apache/commons/net/nntp/NntpThreadContainer;"
        }
    .end annotation

    .line 140
    new-instance v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/NntpThreadContainer;-><init>()V

    .line 141
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 143
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v2, :cond_0

    .line 144
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v2, :cond_1

    .line 147
    iget-object v2, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 148
    iput-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_0

    .line 145
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "c.next is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method

.method private gatherSubjects(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V
    .locals 9

    .line 163
    iget-object v0, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double v2, v2, v4

    double-to-int v2, v2

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 171
    iget-object v2, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_1
    if-eqz v2, :cond_6

    .line 172
    iget-object v3, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v3, :cond_1

    .line 178
    iget-object v3, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v3, v3, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 181
    :cond_1
    invoke-interface {v3}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 187
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz v4, :cond_4

    .line 196
    iget-object v5, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_3

    iget-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v5, :cond_5

    iget-object v4, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 197
    invoke-interface {v4}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v4, :cond_5

    iget-object v4, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v4}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v4

    if-nez v4, :cond_5

    .line 198
    :cond_4
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    .line 171
    :cond_5
    :goto_2
    iget-object v2, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    return-void

    .line 211
    :cond_7
    iget-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    const/4 v3, 0x0

    move-object v4, v3

    :goto_3
    if-eqz v1, :cond_15

    .line 212
    iget-object v5, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_8

    .line 216
    iget-object v5, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 219
    :cond_8
    invoke-interface {v5}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 222
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_9

    .line 226
    :cond_9
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-ne v5, v1, :cond_a

    goto/16 :goto_9

    :cond_a
    if-nez v4, :cond_b

    .line 235
    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v6, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_4

    .line 237
    :cond_b
    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v6, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 239
    :goto_4
    iput-object v3, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 241
    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v6, :cond_f

    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v6, :cond_f

    .line 244
    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_5
    if-eqz v6, :cond_c

    iget-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz v7, :cond_c

    iget-object v6, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_d

    .line 249
    iget-object v7, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 252
    :cond_d
    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_6
    if-eqz v6, :cond_e

    .line 253
    iput-object v5, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 252
    iget-object v6, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_6

    .line 256
    :cond_e
    iput-object v3, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_a

    .line 257
    :cond_f
    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v6, :cond_12

    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v6, :cond_10

    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v6}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v6}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_8

    .line 265
    :cond_10
    new-instance v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    invoke-direct {v6}, Lorg/apache/commons/net/nntp/NntpThreadContainer;-><init>()V

    .line 266
    iget-object v7, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iput-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 267
    iget-object v7, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 269
    iget-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_7
    if-eqz v7, :cond_11

    .line 270
    iput-object v6, v7, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 269
    iget-object v7, v7, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_7

    .line 273
    :cond_11
    iput-object v3, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 274
    iput-object v3, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 276
    iput-object v5, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 277
    iput-object v5, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 280
    iput-object v1, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 281
    iput-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_a

    .line 259
    :cond_12
    :goto_8
    iput-object v5, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 260
    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 261
    iput-object v1, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_a

    :cond_13
    :goto_9
    move-object v4, v1

    :goto_a
    if-nez v2, :cond_14

    move-object v1, v3

    goto :goto_b

    .line 211
    :cond_14
    iget-object v1, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_b
    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_3

    .line 287
    :cond_15
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private pruneEmptyContainers(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V
    .locals 6

    .line 299
    iget-object v0, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_8

    .line 304
    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v4, :cond_1

    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v4, :cond_1

    if-nez v3, :cond_0

    .line 306
    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v0, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_3

    .line 308
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v0, v3, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_3

    .line 316
    :cond_1
    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v4, :cond_5

    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v4, :cond_2

    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v4, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v4, :cond_5

    .line 319
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v3, :cond_3

    .line 323
    iput-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_1

    .line 325
    :cond_3
    iput-object v1, v3, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_1
    move-object v4, v1

    .line 331
    :goto_2
    iget-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz v5, :cond_4

    .line 332
    iget-object v5, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 331
    iget-object v4, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_2

    .line 335
    :cond_4
    iget-object v5, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 336
    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v0, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_3

    .line 344
    :cond_5
    iget-object v3, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz v3, :cond_6

    .line 347
    invoke-direct {p0, v0}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V

    :cond_6
    move-object v3, v0

    :goto_3
    move-object v0, v1

    if-nez v0, :cond_7

    move-object v1, v2

    goto :goto_0

    .line 301
    :cond_7
    iget-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 364
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 367
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/net/nntp/Threadable;

    .line 368
    invoke-interface {v2}, Lorg/apache/commons/net/nntp/Threadable;->isDummy()Z

    move-result v3

    if-nez v3, :cond_1

    .line 369
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/net/nntp/Threader;->buildContainer(Lorg/apache/commons/net/nntp/Threadable;Ljava/util/HashMap;)V

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 377
    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/commons/net/nntp/Threader;->findRootSet(Ljava/util/HashMap;)Lorg/apache/commons/net/nntp/NntpThreadContainer;

    move-result-object p1

    .line 378
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 381
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V

    .line 383
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->reverseChildren()V

    .line 384
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->gatherSubjects(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V

    .line 386
    iget-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v1, :cond_7

    .line 390
    iget-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_1
    if-eqz v1, :cond_5

    .line 391
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v2, :cond_4

    .line 392
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v2, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v2}, Lorg/apache/commons/net/nntp/Threadable;->makeDummy()Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 390
    :cond_4
    iget-object v1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_1

    .line 396
    :cond_5
    iget-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 397
    :goto_2
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->flush()V

    return-object v0

    .line 387
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "root node has a next:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .line 410
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object p1

    return-object p1
.end method

.method public thread([Lorg/apache/commons/net/nntp/Threadable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 427
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object p1

    return-object p1
.end method
