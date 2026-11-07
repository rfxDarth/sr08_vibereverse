.class Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$10;
.super Ljava/lang/Object;
.source "SingleDateAndTimePicker.java"

# interfaces
.implements Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker$AmPmListener;


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

    .line 233
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$10;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmPmChanged(Lcom/github/florent37/singledateandtimepicker/widget/WheelAmPmPicker;Z)V
    .locals 0

    .line 236
    iget-object p2, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$10;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-static {p2}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->access$000(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    .line 237
    iget-object p2, p0, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$10;->this$0:Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    invoke-static {p2, p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->access$100(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;)V

    return-void
.end method
