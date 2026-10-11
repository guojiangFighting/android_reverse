.class Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChoiceMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/ChoiceMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Viewholder"
.end annotation


# instance fields
.field contanier:Landroid/widget/FrameLayout;

.field ibAdd:Landroid/widget/ImageButton;

.field ibSubtract:Landroid/widget/ImageButton;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/dodonew/online/adapter/ChoiceMenuAdapter;

.field tvName:Landroid/widget/TextView;

.field tvNumber:Landroid/widget/TextView;

.field tvPrice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/ChoiceMenuAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/ChoiceMenuAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->this$0:Lcom/dodonew/online/adapter/ChoiceMenuAdapter;

    .line 126
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 127
    const v0, 0x7f0d016c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->contanier:Landroid/widget/FrameLayout;

    .line 128
    const v0, 0x7f0d016d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->imageView:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f0d016e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0d016f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->tvPrice:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0d0171

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->tvNumber:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0d0170

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->ibSubtract:Landroid/widget/ImageButton;

    .line 133
    const v0, 0x7f0d0172

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter$Viewholder;->ibAdd:Landroid/widget/ImageButton;

    .line 134
    return-void
.end method
