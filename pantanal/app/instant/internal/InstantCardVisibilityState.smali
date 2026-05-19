.class public final Lpantanal/app/instant/internal/InstantCardVisibilityState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/instant/internal/IInstantCardState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/instant/internal/InstantCardVisibilityState$IVisibilityStateChange;,
        Lpantanal/app/instant/internal/InstantCardVisibilityState$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpantanal/app/instant/internal/IInstantCardState<",
        "Lpantanal/app/instant/internal/VisibilityState;",
        ">;"
    }
.end annotation


# instance fields
.field private final stateChange:Lpantanal/app/instant/internal/InstantCardVisibilityState$IVisibilityStateChange;

.field private value:Lpantanal/app/instant/internal/VisibilityState;


# direct methods
.method public constructor <init>(Lpantanal/app/instant/internal/InstantCardVisibilityState$IVisibilityStateChange;)V
    .registers 3

    const-string v0, "stateChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/instant/internal/InstantCardVisibilityState;->stateChange:Lpantanal/app/instant/internal/InstantCardVisibilityState$IVisibilityStateChange;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lpantanal/app/instant/internal/InstantCardVisibilityState;->value:Lpantanal/app/instant/internal/VisibilityState;

    return-void
.end method

.method public invoke()V
    .registers 3

    iget-object v0, p0, Lpantanal/app/instant/internal/InstantCardVisibilityState;->value:Lpantanal/app/instant/internal/VisibilityState;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_e

    :cond_6
    sget-object v1, Lpantanal/app/instant/internal/InstantCardVisibilityState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_e
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    goto :goto_20

    :cond_15
    iget-object v0, p0, Lpantanal/app/instant/internal/InstantCardVisibilityState;->stateChange:Lpantanal/app/instant/internal/InstantCardVisibilityState$IVisibilityStateChange;

    invoke-interface {v0}, Lpantanal/app/instant/internal/InstantCardVisibilityState$IVisibilityStateChange;->onInvisible()V

    goto :goto_20

    :cond_1b
    iget-object v0, p0, Lpantanal/app/instant/internal/InstantCardVisibilityState;->stateChange:Lpantanal/app/instant/internal/InstantCardVisibilityState$IVisibilityStateChange;

    invoke-interface {v0}, Lpantanal/app/instant/internal/InstantCardVisibilityState$IVisibilityStateChange;->onVisible()V

    :goto_20
    sget-object v0, Lpantanal/app/instant/internal/VisibilityState;->INIT:Lpantanal/app/instant/internal/VisibilityState;

    iput-object v0, p0, Lpantanal/app/instant/internal/InstantCardVisibilityState;->value:Lpantanal/app/instant/internal/VisibilityState;

    return-void
.end method

.method public bridge synthetic updateValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lpantanal/app/instant/internal/VisibilityState;

    invoke-virtual {p0, p1}, Lpantanal/app/instant/internal/InstantCardVisibilityState;->updateValue(Lpantanal/app/instant/internal/VisibilityState;)V

    return-void
.end method

.method public updateValue(Lpantanal/app/instant/internal/VisibilityState;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/instant/internal/InstantCardVisibilityState;->value:Lpantanal/app/instant/internal/VisibilityState;

    return-void
.end method
