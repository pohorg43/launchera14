.class public final Lpantanal/app/instant/internal/InstantCardScrollState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/instant/internal/IInstantCardState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/instant/internal/InstantCardScrollState$IScrollStateChange;,
        Lpantanal/app/instant/internal/InstantCardScrollState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpantanal/app/instant/internal/IInstantCardState<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/instant/internal/InstantCardScrollState$Companion;

.field public static final SCROLL_INIT_STATE:I = -0x1


# instance fields
.field private final stateChange:Lpantanal/app/instant/internal/InstantCardScrollState$IScrollStateChange;

.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/instant/internal/InstantCardScrollState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/instant/internal/InstantCardScrollState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/instant/internal/InstantCardScrollState;->Companion:Lpantanal/app/instant/internal/InstantCardScrollState$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/instant/internal/InstantCardScrollState$IScrollStateChange;)V
    .registers 3

    const-string v0, "stateChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/instant/internal/InstantCardScrollState;->stateChange:Lpantanal/app/instant/internal/InstantCardScrollState$IScrollStateChange;

    const/4 p1, -0x1

    iput p1, p0, Lpantanal/app/instant/internal/InstantCardScrollState;->value:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lpantanal/app/instant/internal/InstantCardScrollState;->value:I

    return-void
.end method

.method public invoke()V
    .registers 4

    iget v0, p0, Lpantanal/app/instant/internal/InstantCardScrollState;->value:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v2, p0, Lpantanal/app/instant/internal/InstantCardScrollState;->stateChange:Lpantanal/app/instant/internal/InstantCardScrollState$IScrollStateChange;

    invoke-interface {v2, v0}, Lpantanal/app/instant/internal/InstantCardScrollState$IScrollStateChange;->onScroll(I)V

    iput v1, p0, Lpantanal/app/instant/internal/InstantCardScrollState;->value:I

    :cond_c
    return-void
.end method

.method public updateValue(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/instant/internal/InstantCardScrollState;->value:I

    return-void
.end method

.method public bridge synthetic updateValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lpantanal/app/instant/internal/InstantCardScrollState;->updateValue(I)V

    return-void
.end method
