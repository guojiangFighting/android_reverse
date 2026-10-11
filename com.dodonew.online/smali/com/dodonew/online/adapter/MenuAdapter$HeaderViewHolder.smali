.class Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/MenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/MenuAdapter;

.field tvHeaderName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/MenuAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/MenuAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;->this$0:Lcom/dodonew/online/adapter/MenuAdapter;

    .line 169
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 170
    const v0, 0x7f0d0101

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter$HeaderViewHolder;->tvHeaderName:Landroid/widget/TextView;

    .line 171
    return-void
.end method
