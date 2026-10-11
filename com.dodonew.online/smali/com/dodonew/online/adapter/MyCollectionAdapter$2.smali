.class Lcom/dodonew/online/adapter/MyCollectionAdapter$2;
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
    .line 90
    iput-object p1, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$2;->this$0:Lcom/dodonew/online/adapter/MyCollectionAdapter;

    iput-object p2, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$2;->val$holder:Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$2;->this$0:Lcom/dodonew/online/adapter/MyCollectionAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/MyCollectionAdapter;->access$000(Lcom/dodonew/online/adapter/MyCollectionAdapter;)Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$2;->this$0:Lcom/dodonew/online/adapter/MyCollectionAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/MyCollectionAdapter;->access$000(Lcom/dodonew/online/adapter/MyCollectionAdapter;)Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/adapter/MyCollectionAdapter$2;->val$holder:Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;

    invoke-virtual {v1}, Lcom/dodonew/online/adapter/MyCollectionAdapter$Viewholder;->getLayoutPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;->onRightClick(Landroid/view/View;I)V

    .line 97
    :cond_0
    return-void
.end method
