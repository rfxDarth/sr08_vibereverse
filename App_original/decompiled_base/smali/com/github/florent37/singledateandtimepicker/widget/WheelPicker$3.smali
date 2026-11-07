.class Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WheelPicker.java"


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

.field final synthetic val$itemPosition:I


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;I)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$3;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    iput p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$3;->val$itemPosition:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 644
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$3;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    iget v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$3;->val$itemPosition:I

    invoke-static {p1, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$502(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;I)I

    .line 645
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$3;->this$0:Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;->access$600(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V

    return-void
.end method
