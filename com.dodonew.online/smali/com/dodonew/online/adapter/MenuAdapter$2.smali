.class Lcom/dodonew/online/adapter/MenuAdapter$2;
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

.field final synthetic val$menu:Lcom/dodonew/online/bean/Menu;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/MenuAdapter;Lcom/dodonew/online/bean/Menu;Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/MenuAdapter;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/dodonew/online/adapter/MenuAdapter$2;->this$0:Lcom/dodonew/online/adapter/MenuAdapter;

    iput-object p2, p0, Lcom/dodonew/online/adapter/MenuAdapter$2;->val$menu:Lcom/dodonew/online/bean/Menu;

    iput-object p3, p0, Lcom/dodonew/online/adapter/MenuAdapter$2;->val$holder:Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 102
    iget-object v1, p0, Lcom/dodonew/online/adapter/MenuAdapter$2;->val$menu:Lcom/dodonew/online/bean/Menu;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Menu;->getAmount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 103
    .local v0, "number":I
    if-nez v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/dodonew/online/adapter/MenuAdapter$2;->val$holder:Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;

    iget-object v1, v1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->ibSubtract:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/dodonew/online/adapter/MenuAdapter$2;->val$holder:Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;

    iget-object v1, v1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->tvNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/adapter/MenuAdapter$2;->val$menu:Lcom/dodonew/online/bean/Menu;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/bean/Menu;->setAmount(I)V

    .line 108
    iget-object v1, p0, Lcom/dodonew/online/adapter/MenuAdapter$2;->val$holder:Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;

    iget-object v1, v1, Lcom/dodonew/online/adapter/MenuAdapter$ViewHolder;->tvNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/dodonew/online/adapter/MenuAdapter$2;->this$0:Lcom/dodonew/online/adapter/MenuAdapter;

    invoke-static {v1}, Lcom/dodonew/online/adapter/MenuAdapter;->access$000(Lcom/dodonew/online/adapter/MenuAdapter;)Lcom/dodonew/online/interfaces/OnViewClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/dodonew/online/adapter/MenuAdapter$2;->this$0:Lcom/dodonew/online/adapter/MenuAdapter;

    invoke-static {v1}, Lcom/dodonew/online/adapter/MenuAdapter;->access$000(Lcom/dodonew/online/adapter/MenuAdapter;)Lcom/dodonew/online/interfaces/OnViewClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/adapter/MenuAdapter$2;->val$menu:Lcom/dodonew/online/bean/Menu;

    invoke-interface {v1, p1, v2}, Lcom/dodonew/online/interfaces/OnViewClickListener;->onClick(Landroid/view/View;Ljava/lang/Object;)V

    .line 112
    :cond_1
    return-void
.end method
