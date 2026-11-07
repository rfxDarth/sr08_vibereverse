.class public Lcom/qiniu/android/utils/ListVector;
.super Ljava/util/Vector;
.source "ListVector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Vector<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/util/Vector;-><init>(II)V

    return-void
.end method


# virtual methods
.method public declared-synchronized enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/android/utils/ListVector$EnumeratorHandler<",
            "-TE;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 41
    monitor-exit p0

    return-void

    .line 44
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/utils/ListVector;->elementData:[Ljava/lang/Object;

    .line 45
    iget v1, p0, Lcom/qiniu/android/utils/ListVector;->elementCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 47
    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;->enumerate(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized subList(II)Lcom/qiniu/android/utils/ListVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/qiniu/android/utils/ListVector<",
            "TE;>;"
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    new-instance p1, Lcom/qiniu/android/utils/ListVector;

    invoke-direct {p1}, Lcom/qiniu/android/utils/ListVector;-><init>()V

    .line 64
    iget-object p2, p0, Lcom/qiniu/android/utils/ListVector;->elementData:[Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, [Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    .line 65
    iget-object p2, p0, Lcom/qiniu/android/utils/ListVector;->elementData:[Ljava/lang/Object;

    iget v0, p0, Lcom/qiniu/android/utils/ListVector;->elementCount:I

    const-class v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Lcom/qiniu/android/utils/ListVector;->elementData:[Ljava/lang/Object;

    .line 66
    iget-object p2, p1, Lcom/qiniu/android/utils/ListVector;->elementData:[Ljava/lang/Object;

    array-length p2, p2

    iput p2, p1, Lcom/qiniu/android/utils/ListVector;->elementCount:I

    goto :goto_0

    .line 68
    :cond_0
    iget-object p2, p0, Lcom/qiniu/android/utils/ListVector;->elementData:[Ljava/lang/Object;

    iget v0, p0, Lcom/qiniu/android/utils/ListVector;->elementCount:I

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Lcom/qiniu/android/utils/ListVector;->elementData:[Ljava/lang/Object;

    .line 69
    iget p2, p0, Lcom/qiniu/android/utils/ListVector;->elementCount:I

    iput p2, p1, Lcom/qiniu/android/utils/ListVector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/qiniu/android/utils/ListVector;->subList(II)Lcom/qiniu/android/utils/ListVector;

    move-result-object p1

    return-object p1
.end method
