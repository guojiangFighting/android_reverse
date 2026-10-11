.class Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/NewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Viewholder"
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
.method public constructor <init>(Lcom/dodonew/online/adapter/NewsAdapter;Landroid/view/View;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/NewsAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "type"    # I

    .prologue
    .line 118
    iput-object p1, p0, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->this$0:Lcom/dodonew/online/adapter/NewsAdapter;

    .line 119
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 120
    const v0, 0x7f0d018b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->imageView1:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f0d018c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->tvTitle:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0d018d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->tvTime:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0d018e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->tvOrigin:Landroid/widget/TextView;

    .line 124
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 125
    const v0, 0x7f0d0190

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->imageView2:Landroid/widget/ImageView;

    .line 126
    const v0, 0x7f0d0191

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/NewsAdapter$Viewholder;->imageView3:Landroid/widget/ImageView;

    .line 128
    :cond_0
    return-void
.end method
