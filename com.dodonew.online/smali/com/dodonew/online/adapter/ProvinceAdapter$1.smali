.class Lcom/dodonew/online/adapter/ProvinceAdapter$1;
.super Ljava/lang/Object;
.source "ProvinceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/ProvinceAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/ProvinceAdapter$Viewholder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/ProvinceAdapter;

.field final synthetic val$holder:Lcom/dodonew/online/adapter/ProvinceAdapter$Viewholder;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/ProvinceAdapter;Lcom/dodonew/online/adapter/ProvinceAdapter$Viewholder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/ProvinceAdapter;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dodonew/online/adapter/ProvinceAdapter$1;->this$0:Lcom/dodonew/online/adapter/ProvinceAdapter;

    iput-object p2, p0, Lcom/dodonew/online/adapter/ProvinceAdapter$1;->val$holder:Lcom/dodonew/online/adapter/ProvinceAdapter$Viewholder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/adapter/ProvinceAdapter$1;->this$0:Lcom/dodonew/online/adapter/ProvinceAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/ProvinceAdapter;->access$000(Lcom/dodonew/online/adapter/ProvinceAdapter;)Lcom/dodonew/online/interfaces/OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/adapter/ProvinceAdapter$1;->val$holder:Lcom/dodonew/online/adapter/ProvinceAdapter$Viewholder;

    iget-object v1, v1, Lcom/dodonew/online/adapter/ProvinceAdapter$Viewholder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/dodonew/online/adapter/ProvinceAdapter$1;->val$holder:Lcom/dodonew/online/adapter/ProvinceAdapter$Viewholder;

    invoke-virtual {v2}, Lcom/dodonew/online/adapter/ProvinceAdapter$Viewholder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/dodonew/online/interfaces/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 43
    return-void
.end method
