.class Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GuessMoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/GuessMoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/GuessMoreAdapter;

.field tvHeaderMore:Landroid/widget/TextView;

.field tvHeaderName:Landroid/widget/TextView;

.field tvHeaderRaceTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/GuessMoreAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/GuessMoreAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;->this$0:Lcom/dodonew/online/adapter/GuessMoreAdapter;

    .line 146
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 147
    const v0, 0x7f0d0198

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;->tvHeaderName:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0d0199

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;->tvHeaderRaceTime:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0d019a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessMoreAdapter$HeaderViewHolder;->tvHeaderMore:Landroid/widget/TextView;

    .line 150
    return-void
.end method
