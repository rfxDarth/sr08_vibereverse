.class public Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
.super Ljava/lang/Object;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialripple/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RippleBuilder"
.end annotation


# instance fields
.field private final child:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private rippleAlpha:F

.field private rippleBackground:I

.field private rippleColor:I

.field private rippleDelayClick:Z

.field private rippleDiameter:F

.field private rippleDuration:I

.field private rippleFadeDuration:I

.field private rippleHover:Z

.field private rippleOverlay:Z

.field private ripplePersistent:Z

.field private rippleRoundedCorner:F

.field private rippleSearchAdapter:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    .line 696
    iput v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleColor:I

    const/4 v0, 0x0

    .line 697
    iput-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleOverlay:Z

    const/4 v1, 0x1

    .line 698
    iput-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleHover:Z

    const/high16 v2, 0x420c0000    # 35.0f

    .line 699
    iput v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleDiameter:F

    const/16 v2, 0x15e

    .line 700
    iput v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleDuration:I

    const v2, 0x3e4ccccd    # 0.2f

    .line 701
    iput v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleAlpha:F

    .line 702
    iput-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleDelayClick:Z

    const/16 v1, 0x4b

    .line 703
    iput v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleFadeDuration:I

    .line 704
    iput-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->ripplePersistent:Z

    .line 705
    iput v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleBackground:I

    .line 706
    iput-boolean v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleSearchAdapter:Z

    const/4 v0, 0x0

    .line 707
    iput v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleRoundedCorner:F

    .line 710
    iput-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/balysv/materialripple/MaterialRippleLayout;
    .locals 7

    .line 775
    new-instance v0, Lcom/balysv/materialripple/MaterialRippleLayout;

    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;-><init>(Landroid/content/Context;)V

    .line 776
    iget v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleColor:I

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRippleColor(I)V

    .line 777
    iget v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleAlpha:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setDefaultRippleAlpha(I)V

    .line 778
    iget-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleDelayClick:Z

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRippleDelayClick(Z)V

    .line 779
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleDiameter:F

    invoke-static {v1, v2}, Lcom/balysv/materialripple/MaterialRippleLayout;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRippleDiameter(I)V

    .line 780
    iget v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleDuration:I

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRippleDuration(I)V

    .line 781
    iget v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleFadeDuration:I

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRippleFadeDuration(I)V

    .line 782
    iget-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleHover:Z

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRippleHover(Z)V

    .line 783
    iget-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->ripplePersistent:Z

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRipplePersistent(Z)V

    .line 784
    iget-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleOverlay:Z

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRippleOverlay(Z)V

    .line 785
    iget v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleBackground:I

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRippleBackground(I)V

    .line 786
    iget-boolean v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleSearchAdapter:Z

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRippleInAdapter(Z)V

    .line 787
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleRoundedCorner:F

    invoke-static {v1, v2}, Lcom/balysv/materialripple/MaterialRippleLayout;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRippleRoundedCorners(I)V

    .line 789
    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 790
    iget-object v2, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 793
    instance-of v3, v2, Lcom/balysv/materialripple/MaterialRippleLayout;

    if-nez v3, :cond_0

    goto :goto_0

    .line 794
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MaterialRippleLayout could not be created: parent of the view already is a MaterialRippleLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 798
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 799
    iget-object v4, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 802
    :goto_1
    iget-object v4, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Lcom/balysv/materialripple/MaterialRippleLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_3

    .line 805
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public rippleAlpha(F)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    .line 740
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleAlpha:F

    return-object p0
.end method

.method public rippleBackground(I)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 760
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleBackground:I

    return-object p0
.end method

.method public rippleColor(I)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 715
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleColor:I

    return-object p0
.end method

.method public rippleDelayClick(Z)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 745
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleDelayClick:Z

    return-object p0
.end method

.method public rippleDiameterDp(I)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 0

    int-to-float p1, p1

    .line 730
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleDiameter:F

    return-object p0
.end method

.method public rippleDuration(I)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 735
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleDuration:I

    return-object p0
.end method

.method public rippleFadeDuration(I)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 750
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleFadeDuration:I

    return-object p0
.end method

.method public rippleHover(Z)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 725
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleHover:Z

    return-object p0
.end method

.method public rippleInAdapter(Z)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 765
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleSearchAdapter:Z

    return-object p0
.end method

.method public rippleOverlay(Z)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 720
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleOverlay:Z

    return-object p0
.end method

.method public ripplePersistent(Z)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 0

    .line 755
    iput-boolean p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->ripplePersistent:Z

    return-object p0
.end method

.method public rippleRoundedCorners(I)Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;
    .locals 0

    int-to-float p1, p1

    .line 770
    iput p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$RippleBuilder;->rippleRoundedCorner:F

    return-object p0
.end method
