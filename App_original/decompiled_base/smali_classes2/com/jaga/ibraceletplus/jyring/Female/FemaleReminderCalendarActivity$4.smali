.class Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;
.super Ljava/lang/Object;
.source "FemaleReminderCalendarActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/OnItemRender;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->initCalendar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;)V
    .locals 8

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 148
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDayOfMonth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CheckableLayout;->isEnabled()Z

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 151
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0600b1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0600b2

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    :goto_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;Ljava/util/Calendar;)Z

    move-result p1

    .line 157
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v3, v2, :cond_2

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_1

    const/4 v0, 0x4

    if-eq v3, v0, :cond_2

    goto/16 :goto_4

    .line 186
    :cond_1
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 187
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xb

    .line 188
    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 189
    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    .line 190
    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    .line 192
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 193
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    sub-long v4, p1, v2

    const-wide/32 v6, 0x5265c00

    .line 195
    div-long/2addr v4, v6

    cmp-long v0, p1, v2

    if-lez v0, :cond_9

    const-wide/16 p1, 0x0

    cmp-long v0, v4, p1

    if-nez v0, :cond_9

    .line 197
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06047d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800b2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 161
    :cond_2
    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 162
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/widget/calendarcard/CardGridItem;->getDate()Ljava/util/Calendar;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;Ljava/util/Calendar;)I

    move-result p2

    const v0, 0x7f060021

    if-eqz p2, :cond_7

    if-eq p2, v2, :cond_5

    if-eq p2, v5, :cond_5

    if-eq p2, v4, :cond_3

    goto/16 :goto_4

    .line 174
    :cond_3
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080094

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_4

    .line 176
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080097

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 170
    :cond_5
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_6

    .line 171
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080093

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080090

    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 165
    :cond_7
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_8

    .line 166
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08009b

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/Female/FemaleReminderCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080098

    :goto_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_4
    return-void
.end method
