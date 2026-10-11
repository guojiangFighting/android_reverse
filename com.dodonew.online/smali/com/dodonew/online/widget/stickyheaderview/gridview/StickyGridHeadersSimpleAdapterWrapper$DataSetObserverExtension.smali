.class final Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersSimpleAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataSetObserverExtension"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;
    .param p2, "x1"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;-><init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;

    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;

    invoke-static {v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;->access$200(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;)Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;->generateHeaderList(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapter;)[Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$HeaderData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;->access$102(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;[Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$HeaderData;)[Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$HeaderData;

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;->notifyDataSetChanged()V

    .line 120
    return-void
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;

    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;

    invoke-static {v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;->access$200(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;)Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;->generateHeaderList(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapter;)[Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$HeaderData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;->access$102(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;[Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$HeaderData;)[Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$HeaderData;

    .line 125
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersSimpleAdapterWrapper;->notifyDataSetInvalidated()V

    .line 126
    return-void
.end method
