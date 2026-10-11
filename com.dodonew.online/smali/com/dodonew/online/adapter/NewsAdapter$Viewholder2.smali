.class Lcom/dodonew/online/adapter/NewsAdapter$Viewholder2;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/NewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Viewholder2"
.end annotation


# instance fields
.field imageView1:Landroid/widget/ImageView;

.field imageView2:Landroid/widget/ImageView;

.field imageView3:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/dodonew/online/adapter/NewsAdapter;

.field tvOrigin:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/NewsAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/NewsAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder2;->this$0:Lcom/dodonew/online/adapter/NewsAdapter;

    .line 106
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    const v0, 0x7f0d018b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder2;->imageView1:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f0d018c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder2;->tvTitle:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0d018d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder2;->tvTime:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0d018e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder2;->tvOrigin:Landroid/widget/TextView;

    .line 111
    return-void
.end method
