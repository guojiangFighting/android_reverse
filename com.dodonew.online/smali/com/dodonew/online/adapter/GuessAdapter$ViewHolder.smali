.class Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GuessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/GuessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field centerView:Landroid/view/View;

.field ivTeamA:Landroid/widget/ImageView;

.field ivTeamB:Landroid/widget/ImageView;

.field leftView:Landroid/view/View;

.field rightView:Landroid/view/View;

.field final synthetic this$0:Lcom/dodonew/online/adapter/GuessAdapter;

.field tvRaceScore:Landroid/widget/TextView;

.field tvRaceState:Landroid/widget/TextView;

.field tvRaceTitle:Landroid/widget/TextView;

.field tvTeamAName:Landroid/widget/TextView;

.field tvTeamBName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/GuessAdapter;Landroid/view/View;)V
    .locals 3
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/GuessAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    const v2, 0x7f0d0248

    const v1, 0x7f0d0247

    .line 69
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/GuessAdapter;

    .line 70
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    const v0, 0x7f0d015d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->leftView:Landroid/view/View;

    .line 72
    const v0, 0x7f0d015e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->centerView:Landroid/view/View;

    .line 73
    const v0, 0x7f0d015f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->rightView:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->leftView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->tvTeamAName:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->leftView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->ivTeamA:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->rightView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->tvTeamBName:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->rightView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->ivTeamB:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->centerView:Landroid/view/View;

    const v1, 0x7f0d023f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->tvRaceTitle:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->centerView:Landroid/view/View;

    const v1, 0x7f0d0240

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->tvRaceScore:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->centerView:Landroid/view/View;

    const v1, 0x7f0d0241

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GuessAdapter$ViewHolder;->tvRaceState:Landroid/widget/TextView;

    .line 81
    return-void
.end method
