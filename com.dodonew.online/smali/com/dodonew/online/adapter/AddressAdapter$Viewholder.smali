.class Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/AddressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Viewholder"
.end annotation


# instance fields
.field item_right:Landroid/view/View;

.field swipeLayout:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

.field final synthetic this$0:Lcom/dodonew/online/adapter/AddressAdapter;

.field tvAddress:Landroid/widget/TextView;

.field tvMobile:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/AddressAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/AddressAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->this$0:Lcom/dodonew/online/adapter/AddressAdapter;

    .line 95
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 96
    const v0, 0x7f0d0147

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    iput-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->swipeLayout:Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .line 97
    const v0, 0x7f0d0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->item_right:Landroid/view/View;

    .line 98
    const v0, 0x7f0d014a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0d014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->tvAddress:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0d014b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/AddressAdapter$Viewholder;->tvMobile:Landroid/widget/TextView;

    .line 101
    return-void
.end method
