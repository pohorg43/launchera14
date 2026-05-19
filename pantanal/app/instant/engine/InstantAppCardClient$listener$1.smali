.class public final Lpantanal/app/instant/engine/InstantAppCardClient$listener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nearme/instant/xcard/ICardEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/instant/engine/InstantAppCardClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInstantAppCardClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstantAppCardClient.kt\npantanal/app/instant/engine/InstantAppCardClient$listener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,312:1\n1855#2,2:313\n1855#2,2:315\n*S KotlinDebug\n*F\n+ 1 InstantAppCardClient.kt\npantanal/app/instant/engine/InstantAppCardClient$listener$1\n*L\n74#1:313,2\n88#1:315,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailure(ILjava/lang/Throwable;)V
    .registers 14

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "InstantCardClient"

    const-string v2, "init failure"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lpantanal/app/instant/engine/InstantAppCardClient;->INSTANCE:Lpantanal/app/instant/engine/InstantAppCardClient;

    monitor-enter p0

    :try_start_15
    invoke-static {}, Lpantanal/app/instant/engine/InstantAppCardClient;->access$getInitState$p()Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->setState(I)V

    invoke-static {}, Lpantanal/app/instant/engine/InstantAppCardClient;->access$getPendingInitCallbacks$p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nearme/instant/xcard/ICardEngineCallback;

    invoke-interface {v1, p1, p2}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitFailure(ILjava/lang/Throwable;)V

    goto :goto_25

    :cond_35
    invoke-static {}, Lpantanal/app/instant/engine/InstantAppCardClient;->access$getPendingInitCallbacks$p()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onInitSuccess()V
    .registers 13

    sget-object p0, Ly8/c;->a:Ly8/c;

    const-string v1, "InstantCardClient"

    const-string v2, "init success"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v11, Lpantanal/app/instant/engine/InstantAppCardClient;->INSTANCE:Lpantanal/app/instant/engine/InstantAppCardClient;

    monitor-enter v11

    :try_start_16
    invoke-static {}, Lpantanal/app/instant/engine/InstantAppCardClient;->access$getInitState$p()Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->setState(I)V

    invoke-static {}, Lpantanal/app/instant/engine/InstantAppCardClient;->access$getHadSetInterceptor$p()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lpantanal/app/instant/engine/InstantAppCardClient;->access$getInterceptorCallback$p()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-eqz p0, :cond_45

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_45

    :cond_34
    const-string v1, "InstantCardClient"

    const-string v2, "hadSetInterceptor is true."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_45
    :goto_45
    invoke-static {}, Lpantanal/app/instant/engine/InstantAppCardClient;->access$getPendingInitCallbacks$p()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nearme/instant/xcard/ICardEngineCallback;

    invoke-interface {v0}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitSuccess()V

    goto :goto_4d

    :cond_5d
    invoke-static {}, Lpantanal/app/instant/engine/InstantAppCardClient;->access$getPendingInitCallbacks$p()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V
    :try_end_64
    .catchall {:try_start_16 .. :try_end_64} :catchall_66

    monitor-exit v11

    return-void

    :catchall_66
    move-exception p0

    monitor-exit v11

    throw p0
.end method
