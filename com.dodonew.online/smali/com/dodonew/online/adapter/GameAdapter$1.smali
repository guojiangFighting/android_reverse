.class Lcom/dodonew/online/adapter/GameAdapter$1;
.super Ljava/lang/Object;
.source "GameAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/GameAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/GameAdapter;

.field final synthetic val$holder:Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/GameAdapter;Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/GameAdapter;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/dodonew/online/adapter/GameAdapter$1;->this$0:Lcom/dodonew/online/adapter/GameAdapter;

    iput-object p2, p0, Lcom/dodonew/online/adapter/GameAdapter$1;->val$holder:Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dodonew/online/adapter/GameAdapter$1;->this$0:Lcom/dodonew/online/adapter/GameAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/GameAdapter;->access$100(Lcom/dodonew/online/adapter/GameAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/adapter/GameAdapter$1;->val$holder:Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;

    iget-object v1, v1, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/dodonew/online/adapter/GameAdapter$1;->val$holder:Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/dodonew/online/adapter/GameAdapter$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/dodonew/online/interfaces/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 86
    return-void
.end method
