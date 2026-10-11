.class Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/MenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field contanier:Landroid/widget/FrameLayout;

.field ibAdd:Landroid/widget/ImageButton;

.field ibSubtract:Landroid/widget/ImageButton;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/dodonew/online/adapter/MenuAdapter;

.field tvName:Landroid/widget/TextView;

.field tvNumber:Landroid/widget/TextView;

.field tvPrice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/MenuAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/MenuAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/MenuAdapter;

    .line 181
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 182
    const v0, 0x7f0d016c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->contanier:Landroid/widget/FrameLayout;

    .line 183
    const v0, 0x7f0d016d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f0d016e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0d016f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f0d0171

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->tvNumber:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f0d0170

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->ibSubtract:Landroid/widget/ImageButton;

    .line 188
    const v0, 0x7f0d0172

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->ibAdd:Landroid/widget/ImageButton;

    .line 189
    return-void
.end method
