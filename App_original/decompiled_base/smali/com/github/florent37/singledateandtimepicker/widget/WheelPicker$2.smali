.class Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$2;
.super Ljava/lang/Object;
.source "WheelPicker.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->scrollTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$2;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$2;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$302(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;I)I

    .line 638
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$2;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-virtual {p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->invalidate()V

    return-void
.end method
