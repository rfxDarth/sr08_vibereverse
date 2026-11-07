.class public Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;
.super Landroid/widget/ArrayAdapter;
.source "SimpleAdapterAlarm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field private bInit:Z

.field private iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResource:I

.field private macid:Ljava/lang/String;

.field private week:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x7

    .line 32
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->week:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->bInit:Z

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->mResource:I

    .line 41
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->macid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    return-object p0
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 71
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->mResource:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 74
    :cond_0
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->mItems:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    .line 75
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getAlarm_id()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f0a0453

    .line 77
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 78
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getAlarm_id()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a053c

    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v2, "%1$02d:%2$02d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0518

    .line 83
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 84
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getWeekly()I

    move-result v2

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekArray(I)[Z

    move-result-object v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->week:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekText([Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a038a

    .line 86
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Switch;

    .line 87
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 88
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm$1;-><init>(Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;Landroid/widget/Switch;Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;)V

    invoke-virtual {p3, v0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isbInit()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->bInit:Z

    return v0
.end method

.method public setWeek([Ljava/lang/String;Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->week:[Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 47
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->macid:Ljava/lang/String;

    return-void
.end method

.method public setbInit(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterAlarm;->bInit:Z

    return-void
.end method
