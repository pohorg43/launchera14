.class public final Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nearme/instant/xcard/ICardEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/instant/engine/InstantCardEngine;->initCardClient(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $engineStateCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $loadCardOnSuccess:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lpantanal/app/instant/engine/InstantCardEngine;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lpantanal/app/instant/engine/InstantCardEngine;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lh4/z;",
            ">;",
            "Lpantanal/app/instant/engine/InstantCardEngine;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$1;->$engineStateCallback:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    iput-object p3, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$1;->$loadCardOnSuccess:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailure(ILjava/lang/Throwable;)V
    .registers 15

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v11, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_a
    move-object v1, v11

    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantAppCardClient onInitFailure, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardEngine"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$1;->$engineStateCallback:Lkotlin/jvm/functions/Function2;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_40

    :cond_3e
    const-string v1, "instant init failed"

    :cond_40
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {p1}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getStatus$p(Lpantanal/app/instant/engine/InstantCardEngine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getCallback$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lpantanal/app/OnLoadCallback;

    move-result-object p0

    if-eqz p0, :cond_71

    const/16 p1, 0x3e9

    if-eqz p2, :cond_5d

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    :cond_5d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInitFailure: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    :cond_71
    return-void
.end method

.method public onInitSuccess()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "InstantCardEngine"

    const-string v2, "InstantAppCardClient onInitSuccess"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$1;->$engineStateCallback:Lkotlin/jvm/functions/Function2;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$1;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {v0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getStatus$p(Lpantanal/app/instant/engine/InstantCardEngine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$1;->$loadCardOnSuccess:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
