.class Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$2;
.super Ljava/lang/Object;
.source "CheckUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$code:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$permission:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$2;->val$permission:Ljava/lang/String;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$2;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, 0x1

    .line 111
    new-array p1, p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$2;->val$permission:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x0

    .line 112
    :goto_0
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->access$000()[[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_2

    const/4 v1, 0x0

    .line 113
    :goto_1
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->access$000()[[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$2;->val$permission:Ljava/lang/String;

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->access$000()[[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->access$000()[[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 121
    :cond_2
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$2;->val$context:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil$2;->val$code:I

    invoke-static {p2, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
