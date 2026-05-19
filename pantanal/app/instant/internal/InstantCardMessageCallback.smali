.class public final Lpantanal/app/instant/internal/InstantCardMessageCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/instant/internal/IInstantCardState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpantanal/app/instant/internal/IInstantCardState<",
        "Lpantanal/app/instant/IInstantCardCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final cb:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lpantanal/app/instant/IInstantCardCallback;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private needCallback:Z

.field private value:Lpantanal/app/instant/IInstantCardCallback;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lpantanal/app/instant/IInstantCardCallback;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/instant/internal/InstantCardMessageCallback;->cb:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lpantanal/app/instant/internal/InstantCardMessageCallback;->value:Lpantanal/app/instant/IInstantCardCallback;

    return-void
.end method

.method public invoke()V
    .registers 3

    iget-boolean v0, p0, Lpantanal/app/instant/internal/InstantCardMessageCallback;->needCallback:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lpantanal/app/instant/internal/InstantCardMessageCallback;->value:Lpantanal/app/instant/IInstantCardCallback;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lpantanal/app/instant/internal/InstantCardMessageCallback;->cb:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpantanal/app/instant/internal/InstantCardMessageCallback;->needCallback:Z

    return-void
.end method

.method public bridge synthetic updateValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lpantanal/app/instant/IInstantCardCallback;

    invoke-virtual {p0, p1}, Lpantanal/app/instant/internal/InstantCardMessageCallback;->updateValue(Lpantanal/app/instant/IInstantCardCallback;)V

    return-void
.end method

.method public updateValue(Lpantanal/app/instant/IInstantCardCallback;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/instant/internal/InstantCardMessageCallback;->value:Lpantanal/app/instant/IInstantCardCallback;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lpantanal/app/instant/internal/InstantCardMessageCallback;->needCallback:Z

    return-void
.end method
