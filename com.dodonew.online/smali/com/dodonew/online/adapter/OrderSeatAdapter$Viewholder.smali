.class Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "OrderSeatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/OrderSeatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Viewholder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/OrderSeatAdapter;

.field tvNetBar:Landroid/widget/TextView;

.field tvPay:Landroid/widget/TextView;

.field tvTable:Landroid/widget/TextView;

.field tvTableArea:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/OrderSeatAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/OrderSeatAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;->this$0:Lcom/dodonew/online/adapter/OrderSeatAdapter;

    .line 63
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    const v0, 0x7f0d00e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;->tvNetBar:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0d017e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;->tvTableArea:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0d00e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;->tvTable:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0d017f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;->tvTime:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0d00e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;->tvPay:Landroid/widget/TextView;

    .line 69
    return-void
.end method
