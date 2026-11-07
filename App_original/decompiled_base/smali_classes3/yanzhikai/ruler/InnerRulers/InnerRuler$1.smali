.class Lyanzhikai/ruler/InnerRulers/InnerRuler$1;
.super Ljava/lang/Object;
.source "InnerRuler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyanzhikai/ruler/InnerRulers/InnerRuler;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyanzhikai/ruler/InnerRulers/InnerRuler;


# direct methods
.method constructor <init>(Lyanzhikai/ruler/InnerRulers/InnerRuler;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler$1;->this$0:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 82
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler$1;->this$0:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 83
    iget-object v0, p0, Lyanzhikai/ruler/InnerRulers/InnerRuler$1;->this$0:Lyanzhikai/ruler/InnerRulers/InnerRuler;

    iget v1, v0, Lyanzhikai/ruler/InnerRulers/InnerRuler;->mCurrentScale:F

    invoke-virtual {v0, v1}, Lyanzhikai/ruler/InnerRulers/InnerRuler;->goToScale(F)V

    return-void
.end method
