.class public final Lcom/android/quickstep/views/OplusTaskViewImpl$Companion$TRANSLATION_X$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/OplusTaskViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/quickstep/views/TaskView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "translationX"

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/quickstep/views/TaskView;)F
    .registers 2

    const-string/jumbo p0, "taskView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Lcom/android/quickstep/views/TaskView;->mDismissTranslationX:F

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion$TRANSLATION_X$1;->getValue(Lcom/android/quickstep/views/TaskView;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/quickstep/views/TaskView;F)V
    .registers 3

    const-string/jumbo p0, "taskView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskView;->setDismissTranslationX(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion$TRANSLATION_X$1;->setValue(Lcom/android/quickstep/views/TaskView;F)V

    return-void
.end method
