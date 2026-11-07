.class public Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
.super Ljava/lang/Object;
.source "DoubleDateAndTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private bottomSheet:Z

.field private bottomSheetHeight:Ljava/lang/Integer;

.field private buttonOkText:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private curved:Z

.field private customLocale:Ljava/util/Locale;

.field private dayFormatter:Ljava/text/SimpleDateFormat;

.field private defaultDate:Ljava/util/Date;

.field private dialog:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

.field private focusable:Z

.field private listener:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Listener;

.field private mainColor:Ljava/lang/Integer;

.field private maxDate:Ljava/util/Date;

.field private minDate:Ljava/util/Date;

.field private minutesStep:I

.field private mustBeOnFuture:Z

.field private secondDateAfterFirst:Z

.field private tab0Date:Ljava/util/Date;

.field private tab0Days:Z

.field private tab0Hours:Z

.field private tab0Minutes:Z

.field private tab0Text:Ljava/lang/String;

.field private tab1Date:Ljava/util/Date;

.field private tab1Days:Z

.field private tab1Hours:Z

.field private tab1Minutes:Z

.field private tab1Text:Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;

.field private title:Ljava/lang/String;

.field private titleTextColor:Ljava/lang/Integer;

.field private titleTextSize:Ljava/lang/Integer;

.field private todayText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 511
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->minutesStep:I

    const/4 v0, 0x0

    .line 517
    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->backgroundColor:Ljava/lang/Integer;

    .line 521
    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->mainColor:Ljava/lang/Integer;

    .line 525
    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->titleTextColor:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Days:Z

    .line 541
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Hours:Z

    .line 542
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Minutes:Z

    .line 543
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Days:Z

    .line 544
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Hours:Z

    .line 545
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Minutes:Z

    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->focusable:Z

    .line 550
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public backgroundColor(I)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 609
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->backgroundColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public bottomSheet()Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 574
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->bottomSheet:Z

    return-object p0
.end method

.method public bottomSheetHeight(Ljava/lang/Integer;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->bottomSheetHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;
    .locals 4

    .line 710
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->bottomSheet:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;-><init>(Landroid/content/Context;ZLcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$1;)V

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->title:Ljava/lang/String;

    .line 711
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTitle(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->titleTextSize:Ljava/lang/Integer;

    .line 712
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTitleTextSize(Ljava/lang/Integer;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->bottomSheetHeight:Ljava/lang/Integer;

    .line 713
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setBottomSheetHeight(Ljava/lang/Integer;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->todayText:Ljava/lang/String;

    .line 714
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTodayText(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->listener:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Listener;

    .line 715
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setListener(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Listener;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->curved:Z

    .line 716
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setCurved(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->buttonOkText:Ljava/lang/String;

    .line 717
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setButtonOkText(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Text:Ljava/lang/String;

    .line 718
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTab0Text(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Text:Ljava/lang/String;

    .line 719
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTab1Text(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->minutesStep:I

    .line 720
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setMinutesStep(I)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->maxDate:Ljava/util/Date;

    .line 721
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setMaxDateRange(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->minDate:Ljava/util/Date;

    .line 722
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setMinDateRange(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->defaultDate:Ljava/util/Date;

    .line 723
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setDefaultDate(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Days:Z

    .line 724
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTab0DisplayDays(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Hours:Z

    .line 725
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTab0DisplayHours(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Minutes:Z

    .line 726
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTab0DisplayMinutes(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Days:Z

    .line 727
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTab1DisplayDays(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Hours:Z

    .line 728
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTab1DisplayHours(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Minutes:Z

    .line 729
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTab1DisplayMinutes(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Date:Ljava/util/Date;

    .line 730
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTab0Date(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Date:Ljava/util/Date;

    .line 731
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTab1Date(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->dayFormatter:Ljava/text/SimpleDateFormat;

    .line 732
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setDayFormatter(Ljava/text/SimpleDateFormat;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->customLocale:Ljava/util/Locale;

    .line 733
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setCustomLocale(Ljava/util/Locale;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->mustBeOnFuture:Z

    .line 734
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setMustBeOnFuture(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->secondDateAfterFirst:Z

    .line 735
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setSecondDateAfterFirst(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->timeZone:Ljava/util/TimeZone;

    .line 736
    invoke-static {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->access$700(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;Ljava/util/TimeZone;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->focusable:Z

    .line 737
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setFocusable(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->mainColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setMainColor(Ljava/lang/Integer;)V

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->backgroundColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 744
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setBackgroundColor(Ljava/lang/Integer;)V

    .line 747
    :cond_1
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->titleTextColor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 748
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->setTitleTextColor(I)V

    :cond_2
    return-object v0
.end method

.method public buttonOkText(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->buttonOkText:Ljava/lang/String;

    return-object p0
.end method

.method public close()V
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->dialog:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->close()V

    :cond_0
    return-void
.end method

.method public curved()Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 579
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->curved:Z

    return-object p0
.end method

.method public customLocale(Ljava/util/Locale;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->customLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public dayFormatter(Ljava/text/SimpleDateFormat;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->dayFormatter:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public defaultDate(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->defaultDate:Ljava/util/Date;

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->dialog:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public display()V
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->build()Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->dialog:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    .line 756
    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->display()V

    return-void
.end method

.method public focusable()Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 705
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->focusable:Z

    return-object p0
.end method

.method public listener(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Listener;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->listener:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Listener;

    return-object p0
.end method

.method public mainColor(I)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 614
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->mainColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public maxDateRange(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->maxDate:Ljava/util/Date;

    return-object p0
.end method

.method public minDateRange(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->minDate:Ljava/util/Date;

    return-object p0
.end method

.method public minutesStep(I)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 599
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->minutesStep:I

    return-object p0
.end method

.method public mustBeOnFuture()Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 584
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->mustBeOnFuture:Z

    return-object p0
.end method

.method public secondDateAfterFirst(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 665
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->secondDateAfterFirst:Z

    return-object p0
.end method

.method public setTab0DisplayDays(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 670
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Days:Z

    return-object p0
.end method

.method public setTab0DisplayHours(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 675
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Hours:Z

    return-object p0
.end method

.method public setTab0DisplayMinutes(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 680
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Minutes:Z

    return-object p0
.end method

.method public setTab1DisplayDays(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 685
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Days:Z

    return-object p0
.end method

.method public setTab1DisplayHours(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 690
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Hours:Z

    return-object p0
.end method

.method public setTab1DisplayMinutes(Z)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 695
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Minutes:Z

    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->timeZone:Ljava/util/TimeZone;

    return-object p0
.end method

.method public tab0Date(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Date:Ljava/util/Date;

    return-object p0
.end method

.method public tab0Text(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab0Text:Ljava/lang/String;

    return-object p0
.end method

.method public tab1Date(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Date:Ljava/util/Date;

    return-object p0
.end method

.method public tab1Text(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->tab1Text:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public titleTextColor(I)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 604
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->titleTextColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public titleTextSize(Ljava/lang/Integer;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->titleTextSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public todayText(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$Builder;->todayText:Ljava/lang/String;

    return-object p0
.end method
