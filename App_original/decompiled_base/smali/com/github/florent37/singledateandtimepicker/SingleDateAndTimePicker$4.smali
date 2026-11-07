.class Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$4;
.super Ljava/lang/Object;
.source "SingleDateAndTimePicker.java"

# interfaces
.implements Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker$FinishedLoopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$4;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedLoop(Lcom/github/florent37/singledateandtimepicker/widget/WheelDayOfMonthPicker;)V
    .locals 1

    .line 186
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$4;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->access$400(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$4;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->access$500(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    move-result-object p1

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$4;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->access$500(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->getCurrentItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelMonthPicker;->scrollTo(I)V

    .line 188
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$4;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->access$300(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    :cond_0
    return-void
.end method
