.class public abstract Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;
.super Ljava/lang/Object;
.source "BaseDialog.java"


# static fields
.field public static final DEFAULT_ITEM_COUNT_MODE_CURVED:I = 0x7

.field public static final DEFAULT_ITEM_COUNT_MODE_NORMAL:I = 0x5


# instance fields
.field protected backgroundColor:Ljava/lang/Integer;

.field protected curved:Z

.field protected customLocale:Ljava/util/Locale;

.field protected dayFormatter:Ljava/text/SimpleDateFormat;

.field protected defaultDate:Ljava/util/Date;

.field protected displayDays:Z

.field protected displayDaysOfMonth:Z

.field protected displayHours:Z

.field protected displayMinutes:Z

.field protected displayMonth:Z

.field protected displayMonthNumbers:Z

.field protected displayYears:Z

.field protected isAmPm:Ljava/lang/Boolean;

.field private isDisplaying:Z

.field protected mainColor:Ljava/lang/Integer;

.field protected maxDate:Ljava/util/Date;

.field protected minDate:Ljava/util/Date;

.field protected minutesStep:I

.field protected mustBeOnFuture:Z

.field protected okClicked:Z

.field protected titleTextColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->backgroundColor:Ljava/lang/Integer;

    const v0, -0xffff01

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->mainColor:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->titleTextColor:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->okClicked:Z

    .line 37
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->curved:Z

    .line 38
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->mustBeOnFuture:Z

    const/4 v0, 0x5

    .line 39
    iput v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->minutesStep:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->isDisplaying:Z

    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->isDisplaying:Z

    return-void
.end method

.method public display()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->isDisplaying:Z

    return-void
.end method

.method public isDisplaying()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->isDisplaying:Z

    return v0
.end method

.method protected onClose()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->isDisplaying:Z

    return-void
.end method

.method public setBackgroundColor(Ljava/lang/Integer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->backgroundColor:Ljava/lang/Integer;

    return-void
.end method

.method public setMainColor(Ljava/lang/Integer;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->mainColor:Ljava/lang/Integer;

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BaseDialog;->titleTextColor:Ljava/lang/Integer;

    return-void
.end method
