.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$6;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnCellItemChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2255
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCellItemChange(Ljava/util/Calendar;)V
    .locals 0

    .line 2258
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$6;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    return-void
.end method
