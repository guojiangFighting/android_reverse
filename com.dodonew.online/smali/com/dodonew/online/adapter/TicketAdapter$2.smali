.class Lcom/dodonew/online/adapter/TicketAdapter$2;
.super Ljava/lang/Object;
.source "TicketAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/TicketAdapter;->onBindViewHolder(Lcom/dodonew/online/adapter/TicketAdapter$Viewholder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/TicketAdapter;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/TicketAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/TicketAdapter;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/dodonew/online/adapter/TicketAdapter$2;->this$0:Lcom/dodonew/online/adapter/TicketAdapter;

    iput-object p2, p0, Lcom/dodonew/online/adapter/TicketAdapter$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dodonew/online/adapter/TicketAdapter$2;->this$0:Lcom/dodonew/online/adapter/TicketAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/TicketAdapter;->access$100(Lcom/dodonew/online/adapter/TicketAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6765\u665a\u4e86... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/adapter/TicketAdapter$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/dodonew/online/util/ToastMsg;->showToastMsg(Landroid/content/Context;Ljava/lang/String;I)V

    .line 115
    return-void
.end method
