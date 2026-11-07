.class public Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;
.super Ljava/lang/Object;
.source "SmartSwipeRefreshHelper.java"


# static fields
.field private static scrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private static scrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isScrollViewAtTop(Landroid/widget/ScrollView;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic lambda$setupWithScrollView$0(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;->scrollView:Landroid/widget/ScrollView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;->isScrollViewAtTop(Landroid/widget/ScrollView;)Z

    move-result v0

    .line 40
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    :cond_0
    return-void
.end method

.method public static releaseScrollView(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;->scrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 16
    sget-object p0, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;->scrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 p0, 0x0

    .line 17
    sput-object p0, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;->scrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 18
    sput-object p0, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;->scrollView:Landroid/widget/ScrollView;

    :cond_0
    return-void
.end method

.method public static setupWithScrollView(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/widget/ScrollView;)V
    .locals 1

    .line 24
    sput-object p1, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;->scrollView:Landroid/widget/ScrollView;

    .line 26
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;->isScrollViewAtTop(Landroid/widget/ScrollView;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 29
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper$1;

    invoke-direct {p1}, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper$1;-><init>()V

    sput-object p1, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;->scrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 38
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method
