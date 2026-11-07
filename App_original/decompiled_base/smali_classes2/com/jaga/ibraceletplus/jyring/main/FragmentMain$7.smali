.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;


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

    .line 2271
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;)V
    .locals 8

    const/4 v0, 0x0

    .line 2274
    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2276
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2277
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2278
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->isEnabled()Z

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 2279
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0600b1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2281
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0600b2

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2284
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result p1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto/16 :goto_1

    .line 2330
    :cond_1
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2331
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xb

    .line 2332
    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 2333
    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    .line 2334
    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    .line 2336
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$3000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 2337
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    sub-long v4, p1, v2

    const-wide/32 v6, 0x5265c00

    .line 2339
    div-long/2addr v4, v6

    cmp-long v0, p1, v2

    if-lez v0, :cond_9

    const-wide/16 p1, 0x0

    cmp-long v0, v4, p1

    if-nez v0, :cond_9

    .line 2341
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06047d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2342
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800b3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2288
    :cond_2
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2289
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2900(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/util/Calendar;)I

    move-result p1

    const v0, 0x7f060021

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_5

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_3

    goto/16 :goto_1

    .line 2313
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2314
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->isToday()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2315
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080096

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2316
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvFemailReminder:Landroid/widget/TextView;

    const p2, 0x7f13029c

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 2319
    :cond_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080095

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2303
    :cond_5
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2304
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->isToday()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2305
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080092

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2306
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvFemailReminder:Landroid/widget/TextView;

    const p2, 0x7f130298

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 2309
    :cond_6
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080091

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2292
    :cond_7
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2293
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->isToday()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2294
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08009a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2295
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvFemailReminder:Landroid/widget/TextView;

    const p2, 0x7f1302a5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 2298
    :cond_8
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$7;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080099

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_1
    return-void
.end method
