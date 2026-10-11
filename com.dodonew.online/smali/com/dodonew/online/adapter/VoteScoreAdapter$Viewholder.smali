.class Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VoteScoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/VoteScoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Viewholder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/VoteScoreAdapter;

.field tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/VoteScoreAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/VoteScoreAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;->this$0:Lcom/dodonew/online/adapter/VoteScoreAdapter;

    .line 70
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    const v0, 0x7f0d01a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/VoteScoreAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    .line 72
    return-void
.end method
