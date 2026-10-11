.class Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OnlinePlayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/OnlinePlayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/dodonew/online/adapter/OnlinePlayAdapter;

.field tvTime:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/OnlinePlayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/OnlinePlayAdapter;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/dodonew/online/adapter/OnlinePlayAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/OnlinePlayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
