.class public Lcom/Proxy/H;
.super Ljava/lang/Object;
.source "H.java"


# static fields
.field public static smali:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/Proxy/H;->smali:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
