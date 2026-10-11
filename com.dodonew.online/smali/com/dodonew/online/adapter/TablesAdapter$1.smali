.class Lcom/dodonew/online/adapter/TablesAdapter$1;
.super Ljava/lang/Object;
.source "TablesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/TablesAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/TablesAdapter;

.field final synthetic val$holder:Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/TablesAdapter;Ljava/lang/String;Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/TablesAdapter;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/dodonew/online/adapter/TablesAdapter$1;->this$0:Lcom/dodonew/online/adapter/TablesAdapter;

    iput-object p2, p0, Lcom/dodonew/online/adapter/TablesAdapter$1;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/dodonew/online/adapter/TablesAdapter$1;->val$holder:Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dodonew/online/adapter/TablesAdapter$1;->val$type:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/dodonew/online/adapter/TablesAdapter$1;->this$0:Lcom/dodonew/online/adapter/TablesAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/TablesAdapter;->access$000(Lcom/dodonew/online/adapter/TablesAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/adapter/TablesAdapter$1;->val$holder:Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;

    iget-object v1, v1, Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/dodonew/online/adapter/TablesAdapter$1;->val$holder:Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;

    invoke-virtual {v2}, Lcom/dodonew/online/adapter/TablesAdapter$Viewholder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/dodonew/online/interfaces/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 70
    :cond_0
    return-void
.end method
