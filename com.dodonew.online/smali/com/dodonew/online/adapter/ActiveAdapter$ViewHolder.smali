.class Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ActiveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/ActiveAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/dodonew/online/adapter/ActiveAdapter;

.field tvContent:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/ActiveAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/ActiveAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/ActiveAdapter;

    .line 57
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    const v0, 0x7f0d0144

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0d0145

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0d0146

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0d0143

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/ActiveAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 62
    return-void
.end method
