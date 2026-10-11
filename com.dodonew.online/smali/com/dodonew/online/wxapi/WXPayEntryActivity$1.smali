.class Lcom/dodonew/online/wxapi/WXPayEntryActivity$1;
.super Ljava/lang/Object;
.source "WXPayEntryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/wxapi/WXPayEntryActivity;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/wxapi/WXPayEntryActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/wxapi/WXPayEntryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/wxapi/WXPayEntryActivity;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/dodonew/online/wxapi/WXPayEntryActivity$1;->this$0:Lcom/dodonew/online/wxapi/WXPayEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dodonew/online/wxapi/WXPayEntryActivity$1;->this$0:Lcom/dodonew/online/wxapi/WXPayEntryActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/wxapi/WXPayEntryActivity;->finish()V

    .line 61
    return-void
.end method
