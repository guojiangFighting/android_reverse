.class Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MallGiftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/MallGiftAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btnExchange:Landroid/widget/Button;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/dodonew/online/adapter/MallGiftAdapter;

.field tvName:Landroid/widget/TextView;

.field tvPrice:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/MallGiftAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/MallGiftAdapter;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/dodonew/online/adapter/MallGiftAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/MallGiftAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
