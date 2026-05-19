.class final Lpantanal/app/instant/engine/InstantCardEngine$checkCardClient$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/instant/engine/InstantCardEngine;->checkCardClient(Landroid/content/Context;Lpantanal/app/OnEngineCallback;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $engineCallback:Lpantanal/app/OnEngineCallback;

.field public final synthetic $needCallbackEngineState:Z


# direct methods
.method public constructor <init>(ZLpantanal/app/OnEngineCallback;)V
    .registers 3

    iput-boolean p1, p0, Lpantanal/app/instant/engine/InstantCardEngine$checkCardClient$1;->$needCallbackEngineState:Z

    iput-object p2, p0, Lpantanal/app/instant/engine/InstantCardEngine$checkCardClient$1;->$engineCallback:Lpantanal/app/OnEngineCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lpantanal/app/instant/engine/InstantCardEngine$checkCardClient$1;->invoke(ZLjava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(ZLjava/lang/String;)V
    .registers 4

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lpantanal/app/instant/engine/InstantCardEngine$checkCardClient$1;->$needCallbackEngineState:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_16

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$checkCardClient$1;->$engineCallback:Lpantanal/app/OnEngineCallback;

    if-eqz p0, :cond_1f

    const/16 p1, 0xc8

    invoke-interface {p0, p1}, Lpantanal/app/OnEngineCallback;->onInitSuccess(I)V

    goto :goto_1f

    :cond_16
    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$checkCardClient$1;->$engineCallback:Lpantanal/app/OnEngineCallback;

    if-eqz p0, :cond_1f

    const/16 p1, 0xc9

    invoke-interface {p0, p1, p2}, Lpantanal/app/OnEngineCallback;->onInitFailed(ILjava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void
.end method
