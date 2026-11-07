.class Lcom/yydcdut/sdlv/WrapperAdapter$2;
.super Ljava/lang/Object;
.source "WrapperAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yydcdut/sdlv/WrapperAdapter;->doAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yydcdut/sdlv/WrapperAdapter;


# direct methods
.method constructor <init>(Lcom/yydcdut/sdlv/WrapperAdapter;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter$2;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    .line 536
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter$2;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-static {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->access$000(Lcom/yydcdut/sdlv/WrapperAdapter;)Lcom/yydcdut/sdlv/SlideListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/SlideListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 537
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter$2;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-static {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->access$000(Lcom/yydcdut/sdlv/WrapperAdapter;)Lcom/yydcdut/sdlv/SlideListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/SlideListView;->getFirstVisiblePosition()I

    move-result v0

    .line 539
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 540
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 541
    :goto_0
    iget-object v5, p0, Lcom/yydcdut/sdlv/WrapperAdapter$2;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-static {v5}, Lcom/yydcdut/sdlv/WrapperAdapter;->access$000(Lcom/yydcdut/sdlv/WrapperAdapter;)Lcom/yydcdut/sdlv/SlideListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yydcdut/sdlv/SlideListView;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_3

    .line 542
    iget-object v5, p0, Lcom/yydcdut/sdlv/WrapperAdapter$2;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-static {v5}, Lcom/yydcdut/sdlv/WrapperAdapter;->access$000(Lcom/yydcdut/sdlv/WrapperAdapter;)Lcom/yydcdut/sdlv/SlideListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/yydcdut/sdlv/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v7, v0, v4

    .line 544
    iget-object v8, p0, Lcom/yydcdut/sdlv/WrapperAdapter$2;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-static {v8}, Lcom/yydcdut/sdlv/WrapperAdapter;->access$000(Lcom/yydcdut/sdlv/WrapperAdapter;)Lcom/yydcdut/sdlv/SlideListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yydcdut/sdlv/SlideListView;->getHeaderViewsCount()I

    move-result v8

    if-ge v7, v8, :cond_0

    goto :goto_1

    .line 547
    :cond_0
    iget-object v8, p0, Lcom/yydcdut/sdlv/WrapperAdapter$2;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-static {v8}, Lcom/yydcdut/sdlv/WrapperAdapter;->access$000(Lcom/yydcdut/sdlv/WrapperAdapter;)Lcom/yydcdut/sdlv/SlideListView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yydcdut/sdlv/SlideListView;->getHeaderViewsCount()I

    move-result v9

    sub-int v9, v7, v9

    invoke-static {v8, v9}, Lcom/yydcdut/sdlv/WrapperAdapter;->access$100(Lcom/yydcdut/sdlv/WrapperAdapter;I)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 551
    :cond_1
    iget-object v8, p0, Lcom/yydcdut/sdlv/WrapperAdapter$2;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-static {v8}, Lcom/yydcdut/sdlv/WrapperAdapter;->access$000(Lcom/yydcdut/sdlv/WrapperAdapter;)Lcom/yydcdut/sdlv/SlideListView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yydcdut/sdlv/SlideListView;->getHeaderViewsCount()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v8, v7}, Lcom/yydcdut/sdlv/WrapperAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 553
    iget-object v8, p0, Lcom/yydcdut/sdlv/WrapperAdapter$2;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-static {v8}, Lcom/yydcdut/sdlv/WrapperAdapter;->access$200(Lcom/yydcdut/sdlv/WrapperAdapter;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 554
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    if-eqz v7, :cond_2

    .line 558
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v8, :cond_2

    .line 559
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x2

    .line 560
    new-array v8, v8, [F

    aput v7, v8, v3

    const/4 v7, 0x0

    aput v7, v8, v6

    const-string/jumbo v6, "translationY"

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 564
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 565
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter$2;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-static {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->access$300(Lcom/yydcdut/sdlv/WrapperAdapter;)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 566
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 569
    :cond_4
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter$2;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-static {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->access$200(Lcom/yydcdut/sdlv/WrapperAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return v6
.end method
