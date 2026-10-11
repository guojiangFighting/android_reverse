.class Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GuessDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/GuessDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Viewholder"
.end annotation


# instance fields
.field mgv:Lcom/dodonew/online/widget/MGridView;

.field final synthetic this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

.field tvTitle:Landroid/widget/TextView;

.field tvTotalConut:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/GuessDetailAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/GuessDetailAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;->this$0:Lcom/dodonew/online/adapter/GuessDetailAdapter;

    .line 131
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 132
    const v0, 0x7f0d0160

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;->tvTitle:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0d0161

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;->tvTotalConut:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0d0162

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MGridView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessDetailAdapter$Viewholder;->mgv:Lcom/dodonew/online/widget/MGridView;

    .line 135
    return-void
.end method
