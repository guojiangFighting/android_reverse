.class Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->updateCount()V

    .line 64
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$1;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;->access$002(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;Z)Z

    .line 69
    return-void
.end method
