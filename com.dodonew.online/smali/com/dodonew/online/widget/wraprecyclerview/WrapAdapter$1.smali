.class Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "WrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->adjustSpanSize(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

.field final synthetic val$layoutManager:Landroid/support/v7/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    .prologue
    .line 129
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$1;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$1;"
    iput-object p1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$1;->this$0:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    iput-object p2, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$1;->val$layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$1;, "Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$1;"
    const/4 v1, 0x1

    .line 133
    iget-object v2, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$1;->this$0:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    .line 134
    invoke-static {v2, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->access$000(Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$1;->this$0:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-static {v2, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->access$100(Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 135
    .local v0, "isHeaderOrFooter":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter$1;->val$layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    :cond_1
    return v1

    .line 134
    .end local v0    # "isHeaderOrFooter":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
