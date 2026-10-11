.class Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$2;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->createHeaderFooterViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 234
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$2;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$2;"
    iput-object p1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$2;->this$0:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
