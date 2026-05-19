.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion$RECENTS_VIEW_SCALE_PROGRESS$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
        "***>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "recentsViewScaleProgressSpring"

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)F
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;)F"
        }
    .end annotation

    const-string p0, "handle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getRecentsViewScaleProgress()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion$RECENTS_VIEW_SCALE_PROGRESS$1;->getValue(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;F)V"
        }
    .end annotation

    const-string p0, "handle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateRecentsViewScaleProgress(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion$RECENTS_VIEW_SCALE_PROGRESS$1;->setValue(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V

    return-void
.end method
