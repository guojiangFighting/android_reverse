.class Lcom/dodonew/online/adapter/OrderSeatAdapter$1;
.super Ljava/lang/Object;
.source "OrderSeatAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/OrderSeatAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/OrderSeatAdapter;

.field final synthetic val$holder:Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/OrderSeatAdapter;Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/OrderSeatAdapter;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dodonew/online/adapter/OrderSeatAdapter$1;->this$0:Lcom/dodonew/online/adapter/OrderSeatAdapter;

    iput-object p2, p0, Lcom/dodonew/online/adapter/OrderSeatAdapter$1;->val$holder:Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dodonew/online/adapter/OrderSeatAdapter$1;->this$0:Lcom/dodonew/online/adapter/OrderSeatAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/OrderSeatAdapter;->access$000(Lcom/dodonew/online/adapter/OrderSeatAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/adapter/OrderSeatAdapter$1;->val$holder:Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;

    iget-object v1, v1, Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/dodonew/online/adapter/OrderSeatAdapter$1;->val$holder:Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;

    invoke-virtual {v2}, Lcom/dodonew/online/adapter/OrderSeatAdapter$Viewholder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/dodonew/online/interfaces/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 48
    return-void
.end method
