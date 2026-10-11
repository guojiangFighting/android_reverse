.class Lcom/dodonew/online/widget/htextview/animatetext/HText$1;
.super Ljava/lang/Object;
.source "HText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/htextview/animatetext/HText;->init(Lcom/dodonew/online/widget/htextview/HTextView;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/htextview/animatetext/HText;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/htextview/animatetext/HText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/htextview/animatetext/HText;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText$1;->this$0:Lcom/dodonew/online/widget/htextview/animatetext/HText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText$1;->this$0:Lcom/dodonew/online/widget/htextview/animatetext/HText;

    invoke-static {v0}, Lcom/dodonew/online/widget/htextview/animatetext/HText;->access$000(Lcom/dodonew/online/widget/htextview/animatetext/HText;)V

    .line 64
    return-void
.end method
