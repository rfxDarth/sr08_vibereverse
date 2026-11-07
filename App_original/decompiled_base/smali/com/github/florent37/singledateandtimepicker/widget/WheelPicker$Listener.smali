.class public interface abstract Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker$Listener;
.super Ljava/lang/Object;
.source "WheelPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PICKER:",
        "Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCurrentScrolled(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPICKER;ITV;)V"
        }
    .end annotation
.end method

.method public abstract onSelected(Lcom/github/florent37/singledateandtimepicker/widget/WheelPicker;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPICKER;ITV;)V"
        }
    .end annotation
.end method
