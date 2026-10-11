.class Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FeedbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/FeedbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/FeedbackAdapter;

.field tvContent:Landroid/widget/TextView;

.field tvDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/adapter/FeedbackAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/FeedbackAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;->this$0:Lcom/dodonew/online/adapter/FeedbackAdapter;

    .line 112
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 113
    const v0, 0x7f0d0205

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;->tvContent:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0d0207

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/adapter/FeedbackAdapter$HeaderViewHolder;->tvDate:Landroid/widget/TextView;

    .line 115
    return-void
.end method
