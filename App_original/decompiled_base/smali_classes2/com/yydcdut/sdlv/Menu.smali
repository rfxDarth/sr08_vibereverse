.class public final Lcom/yydcdut/sdlv/Menu;
.super Ljava/lang/Object;
.source "Menu.java"


# static fields
.field public static final ITEM_DELETE_FROM_BOTTOM_TO_TOP:I = 0x2

.field public static final ITEM_NOTHING:I = 0x0

.field public static final ITEM_SCROLL_BACK:I = 0x1


# instance fields
.field private isSlideOver:Z

.field private mLeftMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yydcdut/sdlv/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuViewType:I

.field private mRightMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yydcdut/sdlv/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/yydcdut/sdlv/Menu;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/yydcdut/sdlv/Menu;->mMenuViewType:I

    .line 42
    iput-boolean p1, p0, Lcom/yydcdut/sdlv/Menu;->isSlideOver:Z

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yydcdut/sdlv/Menu;->mLeftMenuItems:Ljava/util/List;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yydcdut/sdlv/Menu;->mRightMenuItems:Ljava/util/List;

    .line 45
    iput p2, p0, Lcom/yydcdut/sdlv/Menu;->mMenuViewType:I

    return-void
.end method


# virtual methods
.method public addItem(Lcom/yydcdut/sdlv/MenuItem;)V
    .locals 2

    .line 53
    iget v0, p1, Lcom/yydcdut/sdlv/MenuItem;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yydcdut/sdlv/Menu;->mLeftMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/Menu;->mRightMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addItem(Lcom/yydcdut/sdlv/MenuItem;I)V
    .locals 2

    .line 61
    iget v0, p1, Lcom/yydcdut/sdlv/MenuItem;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/yydcdut/sdlv/Menu;->mLeftMenuItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/Menu;->mRightMenuItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method protected getMenuItems(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yydcdut/sdlv/MenuItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 99
    iget-object p1, p0, Lcom/yydcdut/sdlv/Menu;->mLeftMenuItems:Ljava/util/List;

    return-object p1

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/yydcdut/sdlv/Menu;->mRightMenuItems:Ljava/util/List;

    return-object p1
.end method

.method public getMenuViewType()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/yydcdut/sdlv/Menu;->mMenuViewType:I

    return v0
.end method

.method protected getTotalBtnLength(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 79
    iget-object p1, p0, Lcom/yydcdut/sdlv/Menu;->mLeftMenuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yydcdut/sdlv/MenuItem;

    .line 80
    iget v0, v0, Lcom/yydcdut/sdlv/MenuItem;->width:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return v1

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/yydcdut/sdlv/Menu;->mRightMenuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yydcdut/sdlv/MenuItem;

    .line 85
    iget v0, v0, Lcom/yydcdut/sdlv/MenuItem;->width:I

    add-int/2addr v1, v0

    goto :goto_1

    :cond_2
    return v1
.end method

.method protected isSlideOver()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/yydcdut/sdlv/Menu;->isSlideOver:Z

    return v0
.end method

.method public removeItem(Lcom/yydcdut/sdlv/MenuItem;)Z
    .locals 2

    .line 69
    iget v0, p1, Lcom/yydcdut/sdlv/MenuItem;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/yydcdut/sdlv/Menu;->mLeftMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/yydcdut/sdlv/Menu;->mRightMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
