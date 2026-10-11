.class Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ScoreRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/ScoreRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/ScoreRecordAdapter;

.field tvOperaTime:Landroid/widget/TextView;

.field tvOperaType:Landroid/widget/TextView;

.field tvScoreStrategy:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/ScoreRecordAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/ScoreRecordAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/ScoreRecordAdapter;

    .line 48
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    const v0, 0x7f0d019b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;->tvScoreStrategy:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0d019d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;->tvOperaType:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0d019c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ScoreRecordAdapter$ViewHolder;->tvOperaTime:Landroid/widget/TextView;

    .line 52
    return-void
.end method
