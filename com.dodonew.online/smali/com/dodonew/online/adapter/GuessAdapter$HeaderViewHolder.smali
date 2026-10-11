.class Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GuessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/GuessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/GuessAdapter;

.field tvHeaderMore:Landroid/widget/TextView;

.field tvHeaderName:Landroid/widget/TextView;

.field tvHeaderRaceTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/GuessAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/GuessAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;->this$0:Lcom/dodonew/online/adapter/GuessAdapter;

    .line 166
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 167
    const v0, 0x7f0d0198

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;->tvHeaderName:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f0d0199

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;->tvHeaderRaceTime:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0d019a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$HeaderViewHolder;->tvHeaderMore:Landroid/widget/TextView;

    .line 170
    return-void
.end method
