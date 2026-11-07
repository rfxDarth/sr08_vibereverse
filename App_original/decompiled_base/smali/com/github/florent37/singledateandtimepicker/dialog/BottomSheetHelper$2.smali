.class Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;
.super Ljava/lang/Object;
.source "BottomSheetHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    .line 111
    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$200(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v2}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$200(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2$1;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2$1;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 122
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
