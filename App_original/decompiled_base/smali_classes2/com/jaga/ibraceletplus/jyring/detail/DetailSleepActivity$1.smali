.class Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;
.super Ljava/lang/Object;
.source "DetailSleepActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(II)V
    .locals 13

    .line 143
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 144
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const/16 v7, 0x3c

    iget v8, v3, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    const/16 v6, 0x5a0

    move v4, p1

    move v5, p2

    invoke-static/range {v3 .. v8}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;IIIII)V

    .line 145
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llDay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llWeek:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llSleepStartTime:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llSleepEndTime:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepTotalDuration:Landroid/widget/TextView;

    const p2, 0x7f130432

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvAwakeSleepTitle:Landroid/widget/TextView;

    const p2, 0x7f130435

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 152
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDeepSleepTitle:Landroid/widget/TextView;

    const p2, 0x7f130427

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvLightSleepTitle:Landroid/widget/TextView;

    const p2, 0x7f13042d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    move v4, p1

    move v5, p2

    .line 154
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    const/4 p2, 0x1

    const v0, 0x7f13042e

    const v9, 0x7f130428

    const v10, 0x7f130436

    const v11, 0x7f130433

    const/4 v12, 0x4

    if-ne p1, p2, :cond_1

    .line 155
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v7, 0x15180

    iget v8, v3, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    const/4 v6, 0x7

    invoke-static/range {v3 .. v8}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;IIIII)V

    .line 156
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llDay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llWeek:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llSleepStartTime:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llSleepEndTime:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepTotalDuration:Landroid/widget/TextView;

    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvAwakeSleepTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDeepSleepTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvLightSleepTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 166
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    const v7, 0x15180

    iget v8, v3, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->indexRange:I

    move v6, v5

    invoke-static/range {v3 .. v8}, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;IIIII)V

    .line 167
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llDay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llWeek:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llSleepStartTime:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->llSleepEndTime:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvSleepTotalDuration:Landroid/widget/TextView;

    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setText(I)V

    .line 173
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvAwakeSleepTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvDeepSleepTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailSleepActivity;->tvLightSleepTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method
