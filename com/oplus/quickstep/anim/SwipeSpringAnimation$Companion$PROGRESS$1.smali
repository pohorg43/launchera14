.class public final Lcom/oplus/quickstep/anim/SwipeSpringAnimation$Companion$PROGRESS$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/anim/SwipeSpringAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/oplus/quickstep/anim/SwipeSpringAnimation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "rectScaleSpring"

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)F
    .registers 2

    const-string p0, "anim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->access$getCurrentProgress$p(Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation$Companion$PROGRESS$1;->getValue(Lcom/oplus/quickstep/anim/SwipeSpringAnimation;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/oplus/quickstep/anim/SwipeSpringAnimation;F)V
    .registers 3

    const-string p0, "anim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->access$setCurrentProgress$p(Lcom/oplus/quickstep/anim/SwipeSpringAnimation;F)V

    sget-object p0, Lcom/oplus/quickstep/anim/SwipeSpringAnimation$TYPE;->TYPE_PROGRESS:Lcom/oplus/quickstep/anim/SwipeSpringAnimation$TYPE;

    invoke-static {p1, p0}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;->access$onUpdateIfNeed(Lcom/oplus/quickstep/anim/SwipeSpringAnimation;Lcom/oplus/quickstep/anim/SwipeSpringAnimation$TYPE;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/oplus/quickstep/anim/SwipeSpringAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/anim/SwipeSpringAnimation$Companion$PROGRESS$1;->setValue(Lcom/oplus/quickstep/anim/SwipeSpringAnimation;F)V

    return-void
.end method
