.class Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$6;
.super Ljava/lang/Object;
.source "SingleDateAndTimePicker.java"

# interfaces
.implements Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker$OnFinishedLoopListener;


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

    .line 210
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$6;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedLoop(Lcom/github/florent37/singledateandtimepicker/widget/WheelMinutePicker;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$6;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->access$600(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    move-result-object p1

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$6;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->access$600(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->getCurrentItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/florent37/singledateandtimepicker/widget/WheelHourPicker;->scrollTo(I)V

    return-void
.end method
