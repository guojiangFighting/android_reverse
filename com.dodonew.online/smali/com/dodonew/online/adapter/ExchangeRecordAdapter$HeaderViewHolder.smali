.class Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExchangeRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/ExchangeRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/ExchangeRecordAdapter;

.field tvHeaderName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/ExchangeRecordAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/ExchangeRecordAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;->this$0:Lcom/dodonew/online/adapter/ExchangeRecordAdapter;

    .line 110
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 111
    const v0, 0x7f0d018a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ExchangeRecordAdapter$HeaderViewHolder;->tvHeaderName:Landroid/widget/TextView;

    .line 112
    return-void
.end method
