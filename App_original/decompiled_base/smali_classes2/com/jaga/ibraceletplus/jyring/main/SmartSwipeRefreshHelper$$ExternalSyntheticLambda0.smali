.class public final synthetic Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic f$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/SmartSwipeRefreshHelper;->lambda$setupWithScrollView$0(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    return-void
.end method
