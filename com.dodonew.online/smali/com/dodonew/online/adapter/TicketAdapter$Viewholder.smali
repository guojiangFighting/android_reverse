.class Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TicketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/TicketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Viewholder"
.end annotation


# instance fields
.field contanier:Landroid/view/View;

.field final synthetic this$0:Lcom/dodonew/online/adapter/TicketAdapter;

.field tvMoney:Landroid/widget/TextView;

.field tvNetbar:Landroid/widget/TextView;

.field tvStatus:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/TicketAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/TicketAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->this$0:Lcom/dodonew/online/adapter/TicketAdapter;

    .line 131
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 132
    const v0, 0x7f0d01a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->contanier:Landroid/view/View;

    .line 133
    const v0, 0x7f0d01a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->tvMoney:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0d01a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->tvNetbar:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0d01a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->tvTime:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0d01a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;->tvStatus:Landroid/widget/TextView;

    .line 137
    return-void
.end method
