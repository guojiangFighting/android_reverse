.class Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MyCollectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/MyCollectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Viewholder"
.end annotation


# instance fields
.field item_right:Landroid/view/View;

.field ivPic:Landroid/widget/ImageView;

.field swipeLayout:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

.field final synthetic this$0:Lcom/dodonew/online/adapter/MyCollectionAdapter;

.field tvAddress:Landroid/widget/TextView;

.field tvCost:Landroid/widget/TextView;

.field tvDistance:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/MyCollectionAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/MyCollectionAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->this$0:Lcom/dodonew/online/adapter/MyCollectionAdapter;

    .line 122
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 123
    const v0, 0x7f0d0147

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->swipeLayout:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .line 124
    const v0, 0x7f0d0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->item_right:Landroid/view/View;

    .line 125
    const v0, 0x7f0d0186

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0d0187

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->tvAddress:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0d0188

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->tvCost:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0d0189

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->tvDistance:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0d0180

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->ivPic:Landroid/widget/ImageView;

    .line 130
    return-void
.end method
