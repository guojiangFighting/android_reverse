.class Lcom/umeng/fb/adapter/a$1;
.super Ljava/lang/Object;
.source "ReplyListAdapter.java"

# interfaces
.implements Lcom/umeng/fb/model/Conversation$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/adapter/a;-><init>(Landroid/content/Context;Lcom/umeng/fb/model/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/fb/adapter/a;


# direct methods
.method constructor <init>(Lcom/umeng/fb/adapter/a;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/umeng/fb/adapter/a$1;->a:Lcom/umeng/fb/adapter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/umeng/fb/adapter/a$1;->a:Lcom/umeng/fb/adapter/a;

    invoke-virtual {v0}, Lcom/umeng/fb/adapter/a;->notifyDataSetChanged()V

    .line 72
    return-void
.end method
