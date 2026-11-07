.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "DupMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setupPageChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1008
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 1059
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1053
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1011
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 1012
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageSelected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1017
    instance-of v1, v0, Lcom/jaga/ibraceletplus/jyring/main/OnFragmentSelectedListener;

    if-eqz v1, :cond_0

    .line 1018
    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/OnFragmentSelectedListener;

    invoke-interface {v0}, Lcom/jaga/ibraceletplus/jyring/main/OnFragmentSelectedListener;->onFragmentUnselected()V

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$502(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)I

    .line 1025
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/MainPagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1026
    instance-of v1, v0, Lcom/jaga/ibraceletplus/jyring/main/OnFragmentSelectedListener;

    if-eqz v1, :cond_1

    .line 1027
    move-object v1, v0

    check-cast v1, Lcom/jaga/ibraceletplus/jyring/main/OnFragmentSelectedListener;

    invoke-interface {v1}, Lcom/jaga/ibraceletplus/jyring/main/OnFragmentSelectedListener;->onFragmentSelected()V

    .line 1031
    :cond_1
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v1, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;I)V

    .line 1033
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)I

    move-result p1

    if-nez p1, :cond_3

    .line 1034
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 1035
    check-cast v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    if-eqz v0, :cond_2

    .line 1037
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v0, "onPageSelected getSvContent"

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1047
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method
