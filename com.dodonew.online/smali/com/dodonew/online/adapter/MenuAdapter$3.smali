.class Lcom/dodonew/online/adapter/MenuAdapter$3;
.super Ljava/lang/Object;
.source "MenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/MenuAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/MenuAdapter;

.field final synthetic val$holder:Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/MenuAdapter;Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/MenuAdapter;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dodonew/online/adapter/MenuAdapter$3;->this$0:Lcom/dodonew/online/adapter/MenuAdapter;

    iput-object p2, p0, Lcom/dodonew/online/adapter/MenuAdapter$3;->val$holder:Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dodonew/online/adapter/MenuAdapter$3;->this$0:Lcom/dodonew/online/adapter/MenuAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/MenuAdapter;->access$100(Lcom/dodonew/online/adapter/MenuAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/adapter/MenuAdapter$3;->val$holder:Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;

    iget-object v1, v1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuAdapter$3;->val$holder:Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/dodonew/online/interfaces/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 119
    return-void
.end method
