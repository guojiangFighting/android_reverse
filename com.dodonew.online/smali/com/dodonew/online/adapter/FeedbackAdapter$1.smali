.class Lcom/dodonew/online/adapter/FeedbackAdapter$1;
.super Ljava/lang/Object;
.source "FeedbackAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/FeedbackAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/FeedbackAdapter;

.field final synthetic val$holder:Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/FeedbackAdapter;Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/FeedbackAdapter;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dodonew/online/adapter/FeedbackAdapter$1;->this$0:Lcom/dodonew/online/adapter/FeedbackAdapter;

    iput-object p2, p0, Lcom/dodonew/online/adapter/FeedbackAdapter$1;->val$holder:Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dodonew/online/adapter/FeedbackAdapter$1;->this$0:Lcom/dodonew/online/adapter/FeedbackAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/FeedbackAdapter;->access$000(Lcom/dodonew/online/adapter/FeedbackAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/adapter/FeedbackAdapter$1;->val$holder:Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/dodonew/online/adapter/FeedbackAdapter$1;->val$holder:Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/dodonew/online/adapter/FeedbackAdapter$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/dodonew/online/interfaces/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 78
    return-void
.end method
