.class Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;
.super Ljava/lang/RuntimeException;
.source "StickyGridHeadersGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RuntimePlatformSupportException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a5f9f5d38e819daL


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "this$0"    # Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView$RuntimePlatformSupportException;->this$0:Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;

    .line 1179
    invoke-static {}, Lcom/dodonew/online/widget/stickyheaderview/gridview/StickyGridHeadersGridView;->access$800()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1180
    return-void
.end method
