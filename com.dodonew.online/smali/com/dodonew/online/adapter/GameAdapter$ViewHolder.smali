.class Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/GameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/dodonew/online/adapter/GameAdapter;

.field tvChannel:Landroid/widget/TextView;

.field tvCount:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;

.field viewPic:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/GameAdapter;Landroid/view/View;)V
    .locals 4
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/GameAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/GameAdapter;

    .line 59
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    const v0, 0x7f0d0157

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->viewPic:Landroid/view/View;

    .line 61
    const v0, 0x7f0d0158

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f0d0159

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0d015b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->tvChannel:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0d015a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {p1}, Lcom/dodonew/online/adapter/GameAdapter;->access$000(Lcom/dodonew/online/adapter/GameAdapter;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
.end method
