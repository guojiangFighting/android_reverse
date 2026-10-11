.class public interface abstract Lcn/sharesdk/login/OnLoginListener;
.super Ljava/lang/Object;
.source "OnLoginListener.java"


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onLogin(Ljava/lang/String;Ljava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onRegister(Lcn/sharesdk/login/UserInfo;)Z
.end method
