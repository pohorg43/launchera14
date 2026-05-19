.class public final Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_Y$1;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/OplusRectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "rectYSpring"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/util/OplusRectFSpringAnim;)Ljava/lang/Float;
    .registers 2

    const-string p0, "anim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_Y$1;->get(Lcom/android/quickstep/util/OplusRectFSpringAnim;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/quickstep/util/OplusRectFSpringAnim;F)V
    .registers 3

    const-string p0, "anim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p1, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    sget-object p0, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_Y:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->onUpdateIfNeed(Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_Y$1;->setValue(Lcom/android/quickstep/util/OplusRectFSpringAnim;F)V

    return-void
.end method
