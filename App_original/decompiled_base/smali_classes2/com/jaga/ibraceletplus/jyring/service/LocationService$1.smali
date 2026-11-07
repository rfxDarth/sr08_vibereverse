.class Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/service/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 180
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "jringSENSORDATA_BROADCAST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "jringACTION_NOTIFY_SPORTS_STEPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    const-string/jumbo v0, "steps"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$402(Lcom/jaga/ibraceletplus/jyring/service/LocationService;I)I

    return-void

    .line 182
    :cond_2
    const-string/jumbo p1, "state"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    .line 184
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    const-string v2, "data"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$002(Lcom/jaga/ibraceletplus/jyring/service/LocationService;I)I

    .line 185
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$000(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)I

    move-result p1

    const/16 p2, 0x14

    if-le p1, p2, :cond_3

    .line 186
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$100(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)I

    move-result p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$200(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)I

    move-result p2

    mul-int p1, p1, p2

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$000(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)I

    move-result p2

    add-int/2addr p1, p2

    .line 187
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$212(Lcom/jaga/ibraceletplus/jyring/service/LocationService;I)I

    .line 188
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$200(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)I

    move-result v0

    div-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$102(Lcom/jaga/ibraceletplus/jyring/service/LocationService;I)I

    .line 189
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$000(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)I

    move-result p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$300(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)I

    move-result p2

    if-le p1, p2, :cond_3

    .line 190
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/LocationService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$000(Lcom/jaga/ibraceletplus/jyring/service/LocationService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->access$302(Lcom/jaga/ibraceletplus/jyring/service/LocationService;I)I

    :cond_3
    :goto_0
    return-void
.end method
