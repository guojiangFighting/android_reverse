.class Lcom/dodonew/online/adapter/MyCollectionAdapter$3;
.super Ljava/lang/Object;
.source "MyCollectionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/MyCollectionAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/MyCollectionAdapter;

.field final synthetic val$holder:Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/MyCollectionAdapter;Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/MyCollectionAdapter;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$3;->this$0:Lcom/dodonew/online/adapter/MyCollectionAdapter;

    iput-object p2, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$3;->val$holder:Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$3;->this$0:Lcom/dodonew/online/adapter/MyCollectionAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/MyCollectionAdapter;->access$100(Lcom/dodonew/online/adapter/MyCollectionAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$3;->val$holder:Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;

    iget-object v1, v1, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$3;->val$holder:Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;

    invoke-virtual {v2}, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/dodonew/online/interfaces/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 104
    return-void
.end method
