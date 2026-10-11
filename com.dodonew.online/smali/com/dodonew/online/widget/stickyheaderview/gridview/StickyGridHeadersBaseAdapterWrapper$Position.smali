.class public Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$Position;
.super Ljava/lang/Object;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Position"
.end annotation


# instance fields
.field protected mHeader:I

.field protected mPosition:I

.field final synthetic this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method protected constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "position"    # I
    .param p3, "header"    # I

    .prologue
    .line 463
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$Position;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput p2, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    .line 465
    iput p3, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    .line 466
    return-void
.end method
