.class public Lorg/osmdroid/tileprovider/TileStates;
.super Ljava/lang/Object;
.source "TileStates.java"


# instance fields
.field private mDone:Z

.field private mExpired:I

.field private mNotFound:I

.field private mRunAfters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mScaled:I

.field private mTotal:I

.field private mUpToDate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mRunAfters:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public finaliseLoop()V
    .locals 2

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mDone:Z

    .line 41
    iget-object v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mRunAfters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 43
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getExpired()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    return v0
.end method

.method public getNotFound()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    return v0
.end method

.method public getRunAfters()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mRunAfters:Ljava/util/Collection;

    return-object v0
.end method

.method public getScaled()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    return v0
.end method

.method public getUpToDate()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    return v0
.end method

.method public handleTile(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 49
    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    if-nez p1, :cond_0

    .line 51
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    return-void

    .line 53
    :cond_0
    invoke-static {p1}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    const/4 v0, -0x4

    if-eq p1, v0, :cond_4

    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 56
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    return-void

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    return-void

    .line 62
    :cond_3
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    return-void

    .line 65
    :cond_4
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    return-void
.end method

.method public initialiseLoop()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mDone:Z

    .line 32
    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    .line 33
    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    .line 34
    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    .line 35
    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    .line 36
    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    return-void
.end method

.method public isDone()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mDone:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mDone:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TileStates: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(U) + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(E) + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(S) + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(N)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    const-string v0, "TileStates"

    return-object v0
.end method
