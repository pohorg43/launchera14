.class final Lpantanal/app/instant/InstantCardImpl$loadInternal$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/instant/InstantCardImpl;->loadInternal(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $bundle:Landroid/os/Bundle;

.field public final synthetic $callback:Lpantanal/app/OnLoadCallback;

.field public final synthetic this$0:Lpantanal/app/instant/InstantCardImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/instant/InstantCardImpl;Lpantanal/app/OnLoadCallback;Landroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    iput-object p2, p0, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;->$callback:Lpantanal/app/OnLoadCallback;

    iput-object p3, p0, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;->$bundle:Landroid/os/Bundle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 13

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    invoke-static {v0}, Lpantanal/app/instant/InstantCardImpl;->access$getCardTag$p(Lpantanal/app/instant/InstantCardImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    invoke-static {v1}, Lpantanal/app/instant/InstantCardImpl;->access$getConfiguration$p(Lpantanal/app/instant/InstantCardImpl;)Lpantanal/app/bean/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lpantanal/app/bean/Configuration;->getLoadTimeout()I

    move-result v1

    iget-object v2, p0, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;->$callback:Lpantanal/app/OnLoadCallback;

    invoke-static {v0, v1, v2}, Lpantanal/app/TimeoutExtKt;->createTimeOutLoadCallback(Ljava/lang/String;ILpantanal/app/OnLoadCallback;)Lpantanal/app/TimeOutLoadCallback;

    move-result-object v7

    invoke-virtual {v7}, Lpantanal/app/TimeOutLoadCallback;->startLoadCountDown()V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    invoke-static {v0}, Lpantanal/app/instant/InstantCardImpl;->access$getCardViewInfo$p(Lpantanal/app/instant/InstantCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v0

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0xc

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    invoke-static {v0}, Lpantanal/app/instant/InstantCardImpl;->access$initEngine(Lpantanal/app/instant/InstantCardImpl;)V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    invoke-static {v0}, Lpantanal/app/instant/InstantCardImpl;->access$getContext$p(Lpantanal/app/instant/InstantCardImpl;)Landroid/content/Context;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_68

    iget-object v1, p0, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;->$bundle:Landroid/os/Bundle;

    invoke-static {v1}, Lpantanal/app/instant/InstantCardImpl;->access$getCardEngine$p(Lpantanal/app/instant/InstantCardImpl;)Lpantanal/app/instant/engine/InstantCardEngine;

    move-result-object v3

    if-eqz v3, :cond_68

    invoke-static {v1}, Lpantanal/app/instant/InstantCardImpl;->access$getCardViewInfo$p(Lpantanal/app/instant/InstantCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getInstantUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, p0}, Lpantanal/app/instant/InstantCardImpl;->access$getCardSize(Lpantanal/app/instant/InstantCardImpl;Landroid/os/Bundle;)Lpantanal/app/instant/internal/CardDesignSize;

    move-result-object v6

    invoke-static {v1}, Lpantanal/app/instant/InstantCardImpl;->access$getConfiguration$p(Lpantanal/app/instant/InstantCardImpl;)Lpantanal/app/bean/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/app/bean/Configuration;->getInstantConfiguration()Lpantanal/app/instant/InstantConfiguration;

    move-result-object p0

    if-eqz p0, :cond_61

    invoke-virtual {p0}, Lpantanal/app/instant/InstantConfiguration;->getInstantEngineCallback()Lpantanal/app/OnEngineCallback;

    move-result-object p0

    move-object v8, p0

    goto :goto_62

    :cond_61
    move-object v8, v0

    :goto_62
    invoke-virtual/range {v3 .. v8}, Lpantanal/app/instant/engine/InstantCardEngine;->obtainView(Landroid/content/Context;Ljava/lang/String;Lpantanal/app/instant/ICardDesignSize;Lpantanal/app/OnLoadCallback;Lpantanal/app/OnEngineCallback;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    move-object v0, p0

    :cond_68
    if-nez v0, :cond_7c

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "InstantCard"

    const-string v3, "loadInternal,context is null,not invoke engine unsubscrbe."

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_7c
    return-void
.end method
