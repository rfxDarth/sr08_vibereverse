.class Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;
.super Ljava/lang/Object;
.source "StoreHouseHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/StoreHouseHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AniController"
.end annotation


# instance fields
.field mCountPerSeg:I

.field mInterval:I

.field mRunning:Z

.field mSegCount:I

.field mTick:I

.field final synthetic this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;


# direct methods
.method private constructor <init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 355
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mTick:I

    .line 356
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    .line 357
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mSegCount:I

    .line 358
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mInterval:I

    const/4 p1, 0x1

    .line 359
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;Lcom/scwang/smartrefresh/header/StoreHouseHeader$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;-><init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;)V

    return-void
.end method

.method static synthetic access$100(Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->start()V

    return-void
.end method

.method static synthetic access$200(Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->stop()V

    return-void
.end method

.method private start()V
    .locals 3

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mRunning:Z

    const/4 v1, 0x0

    .line 363
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mTick:I

    .line 365
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget v1, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLoadingAniDuration:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v2, v2, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mInterval:I

    .line 366
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget v1, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLoadingAniSegDuration:I

    iget v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mInterval:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    .line 367
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v1, v1, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mSegCount:I

    .line 368
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->run()V

    return-void
.end method

.method private stop()V
    .locals 1

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mRunning:Z

    .line 401
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    .line 402
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 374
    iget v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mTick:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    rem-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 375
    :goto_0
    iget v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mSegCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 377
    iget v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    mul-int v3, v3, v2

    add-int/2addr v3, v0

    .line 378
    iget v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mTick:I

    if-le v3, v5, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v5, v5, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v3, v5

    .line 383
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v5, v5, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;

    .line 385
    invoke-virtual {v3, v1}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->setFillAfter(Z)V

    .line 386
    invoke-virtual {v3, v4}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->setFillEnabled(Z)V

    .line 387
    invoke-virtual {v3, v1}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->setFillBefore(Z)V

    const-wide/16 v4, 0x190

    .line 388
    invoke-virtual {v3, v4, v5}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->setDuration(J)V

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    .line 389
    invoke-virtual {v3, v4, v5}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->start(FF)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    :cond_1
    iget v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mTick:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mTick:I

    .line 393
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v0, v0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->this$0:Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    iget-object v0, v0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 395
    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->mInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
