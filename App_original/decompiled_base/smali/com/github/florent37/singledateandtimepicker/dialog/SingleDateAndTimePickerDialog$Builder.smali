.class public Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
.super Ljava/lang/Object;
.source "SingleDateAndTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private bottomSheet:Z

.field private bottomSheetHeight:Ljava/lang/Integer;

.field private final context:Landroid/content/Context;

.field private curved:Z

.field private customLocale:Ljava/util/Locale;

.field private dayFormatter:Ljava/text/SimpleDateFormat;

.field private defaultDate:Ljava/util/Date;

.field private dialog:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

.field private displayDays:Z

.field private displayDaysOfMonth:Z

.field private displayHours:Z

.field private displayListener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;

.field private displayMinutes:Z

.field private displayMonth:Z

.field private displayMonthNumbers:Z

.field private displayYears:Z

.field private focusable:Z

.field private isAmPm:Ljava/lang/Boolean;

.field private listener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;

.field private mainColor:Ljava/lang/Integer;

.field private maxDate:Ljava/util/Date;

.field private minDate:Ljava/util/Date;

.field private minutesStep:I

.field private mustBeOnFuture:Z

.field private timeZone:Ljava/util/TimeZone;

.field private title:Ljava/lang/String;

.field private titleTextColor:Ljava/lang/Integer;

.field private titleTextSize:Ljava/lang/Integer;

.field private todayText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 360
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->minutesStep:I

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayDays:Z

    .line 363
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayMinutes:Z

    .line 364
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayHours:Z

    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayMonth:Z

    .line 366
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayDaysOfMonth:Z

    .line 367
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayYears:Z

    .line 368
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayMonthNumbers:Z

    .line 369
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->focusable:Z

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->backgroundColor:Ljava/lang/Integer;

    .line 378
    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->mainColor:Ljava/lang/Integer;

    .line 382
    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->titleTextColor:Ljava/lang/Integer;

    .line 401
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public backgroundColor(I)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->backgroundColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public bottomSheet()Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->bottomSheet:Z

    return-object p0
.end method

.method public bottomSheetHeight(Ljava/lang/Integer;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->bottomSheetHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;
    .locals 4

    .line 545
    new-instance v0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->bottomSheet:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;-><init>(Landroid/content/Context;ZLcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$1;)V

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->title:Ljava/lang/String;

    .line 546
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setTitle(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->titleTextSize:Ljava/lang/Integer;

    .line 547
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setTitleTextSize(Ljava/lang/Integer;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->bottomSheetHeight:Ljava/lang/Integer;

    .line 548
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setBottomSheetHeight(Ljava/lang/Integer;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->todayText:Ljava/lang/String;

    .line 549
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setTodayText(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->listener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;

    .line 550
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setListener(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->curved:Z

    .line 551
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setCurved(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->minutesStep:I

    .line 552
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setMinutesStep(I)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->maxDate:Ljava/util/Date;

    .line 553
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setMaxDateRange(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->minDate:Ljava/util/Date;

    .line 554
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setMinDateRange(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->defaultDate:Ljava/util/Date;

    .line 555
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setDefaultDate(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayHours:Z

    .line 556
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setDisplayHours(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayMonth:Z

    .line 557
    invoke-static {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->access$400(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayYears:Z

    .line 558
    invoke-static {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->access$500(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayDaysOfMonth:Z

    .line 559
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setDisplayDaysOfMonth(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayMinutes:Z

    .line 560
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setDisplayMinutes(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayMonthNumbers:Z

    .line 561
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setDisplayMonthNumbers(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayDays:Z

    .line 562
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setDisplayDays(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->dayFormatter:Ljava/text/SimpleDateFormat;

    .line 563
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setDayFormatter(Ljava/text/SimpleDateFormat;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->customLocale:Ljava/util/Locale;

    .line 564
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setCustomLocale(Ljava/util/Locale;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->mustBeOnFuture:Z

    .line 565
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setMustBeOnFuture(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->timeZone:Ljava/util/TimeZone;

    .line 566
    invoke-static {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->access$600(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;Ljava/util/TimeZone;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->focusable:Z

    .line 567
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setFocusable(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->mainColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setMainColor(Ljava/lang/Integer;)V

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->backgroundColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 574
    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setBackgroundColor(Ljava/lang/Integer;)V

    .line 577
    :cond_1
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->titleTextColor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 578
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setTitleTextColor(I)V

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayListener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;

    if-eqz v1, :cond_3

    .line 582
    invoke-static {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->access$700(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;)V

    .line 585
    :cond_3
    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->isAmPm:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 586
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->setIsAmPm(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    :cond_4
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->dialog:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->close()V

    :cond_0
    return-void
.end method

.method public curved()Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->curved:Z

    return-object p0
.end method

.method public customLocale(Ljava/util/Locale;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->customLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public defaultDate(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->defaultDate:Ljava/util/Date;

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->dialog:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public display()V
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->build()Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->dialog:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    .line 594
    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->display()V

    return-void
.end method

.method public displayAmPm(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 450
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->isAmPm:Ljava/lang/Boolean;

    return-object p0
.end method

.method public displayDays(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 445
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayDays:Z

    return-object p0
.end method

.method public displayDaysOfMonth(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 465
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayDaysOfMonth:Z

    return-object p0
.end method

.method public displayHours(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 460
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayHours:Z

    return-object p0
.end method

.method public displayListener(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayListener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;

    return-object p0
.end method

.method public displayMinutes(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 455
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayMinutes:Z

    return-object p0
.end method

.method public displayMonth(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 470
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayMonth:Z

    return-object p0
.end method

.method public displayMonthNumbers(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 515
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayMonthNumbers:Z

    return-object p0
.end method

.method public displayYears(Z)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 475
    iput-boolean p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->displayYears:Z

    return-object p0
.end method

.method public focusable()Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->focusable:Z

    return-object p0
.end method

.method public listener(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->listener:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Listener;

    return-object p0
.end method

.method public mainColor(I)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 500
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->mainColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public maxDateRange(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->maxDate:Ljava/util/Date;

    return-object p0
.end method

.method public minDateRange(Ljava/util/Date;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->minDate:Ljava/util/Date;

    return-object p0
.end method

.method public minutesStep(I)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 440
    iput p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->minutesStep:I

    return-object p0
.end method

.method public mustBeOnFuture()Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->mustBeOnFuture:Z

    return-object p0
.end method

.method public setDayFormatter(Ljava/text/SimpleDateFormat;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->dayFormatter:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->timeZone:Ljava/util/TimeZone;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public titleTextColor(I)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 490
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->titleTextColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public titleTextSize(Ljava/lang/Integer;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->titleTextSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public todayText(Ljava/lang/String;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$Builder;->todayText:Ljava/lang/String;

    return-object p0
.end method
