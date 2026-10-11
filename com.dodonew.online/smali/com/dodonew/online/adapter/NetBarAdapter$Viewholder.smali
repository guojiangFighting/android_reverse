.class Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NetBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/NetBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Viewholder"
.end annotation


# instance fields
.field ivCoupon:Landroid/widget/ImageView;

.field ivOrder:Landroid/widget/ImageView;

.field ivPay:Landroid/widget/ImageView;

.field ivPic:Landroid/widget/ImageView;

.field ivWifi:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/dodonew/online/adapter/NetBarAdapter;

.field tvAddress:Landroid/widget/TextView;

.field tvCost:Landroid/widget/TextView;

.field tvDistance:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/NetBarAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/NetBarAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->this$0:Lcom/dodonew/online/adapter/NetBarAdapter;

    .line 117
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 118
    const v0, 0x7f0d0186

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0d0187

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->tvAddress:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0d0188

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->tvCost:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0d0189

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->tvDistance:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0d0180

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivPic:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f0d0182

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivOrder:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f0d0183

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivPay:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f0d0184

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivCoupon:Landroid/widget/ImageView;

    .line 126
    const v0, 0x7f0d0185

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NetBarAdapter$Viewholder;->ivWifi:Landroid/widget/ImageView;

    .line 127
    return-void
.end method
