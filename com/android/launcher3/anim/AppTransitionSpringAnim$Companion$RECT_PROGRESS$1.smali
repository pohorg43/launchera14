.class public final Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion$RECT_PROGRESS$1;
.super Lcom/oplus/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AppTransitionSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/animation/FloatPropertyCompat<",
        "Lcom/android/launcher3/anim/AppTransitionSpringAnim;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "rectScaleProgress"

    invoke-direct {p0, v0}, Lcom/oplus/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)F
    .registers 2

    const-string/jumbo p0, "object"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->access$getMProgress$p(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/android/launcher3/anim/AppTransitionSpringAnim;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion$RECT_PROGRESS$1;->getValue(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/launcher3/anim/AppTransitionSpringAnim;F)V
    .registers 3

    const-string/jumbo p0, "object"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->access$setMProgress$p(Lcom/android/launcher3/anim/AppTransitionSpringAnim;F)V

    invoke-static {p1}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->access$update(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/anim/AppTransitionSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion$RECT_PROGRESS$1;->setValue(Lcom/android/launcher3/anim/AppTransitionSpringAnim;F)V

    return-void
.end method
