.class public final Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;
.super Landroid/graphics/Paint;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyPaint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLongPressToShowTaskbarHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongPressToShowTaskbarHelper.kt\ncom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,87:1\n94#2,14:88\n94#2,14:102\n94#2,14:116\n94#2,14:130\n94#2,14:144\n*S KotlinDebug\n*F\n+ 1 LongPressToShowTaskbarHelper.kt\ncom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint\n*L\n46#1:88,14\n55#1:102,14\n64#1:116,14\n73#1:130,14\n76#1:144,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$Companion;

.field private static final MID_TRANSPARENT_ALPHA:I = 0x7f

.field private static final NO_TRANSPARENT_ALPHA:I = 0xff

.field private static final ORIGIN_ALPHA:I = 0x59

.field private static final TRANSPARENT_ALPHA:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;->Companion:Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;->updateHotAreaAlphaAnim$lambda$4(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;->updateHotAreaAlphaAnim$lambda$0(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;->updateHotAreaAlphaAnim$lambda$6(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;->updateHotAreaAlphaAnim$lambda$2(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final updateHotAreaAlphaAnim$lambda$0(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;->calculateAndUpdateAlpha(I)V

    return-void
.end method

.method private static final updateHotAreaAlphaAnim$lambda$2(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;->calculateAndUpdateAlpha(I)V

    return-void
.end method

.method private static final updateHotAreaAlphaAnim$lambda$4(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;->calculateAndUpdateAlpha(I)V

    return-void
.end method

.method private static final updateHotAreaAlphaAnim$lambda$6(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;->calculateAndUpdateAlpha(I)V

    return-void
.end method


# virtual methods
.method public final calculateAndUpdateAlpha(I)V
    .registers 2

    mul-int/lit8 p1, p1, 0x59

    div-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_16
    return-void
.end method

.method public final updateHotAreaAlphaAnim()Landroid/animation/ValueAnimator;
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_b2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v2, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v2, "alphaFadeOut2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$updateHotAreaAlphaAnim$$inlined$addListener$default$1;

    invoke-direct {v2}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$updateHotAreaAlphaAnim$$inlined$addListener$default$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v2, v0, [I

    fill-array-data v2, :array_ba

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v5}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/launcher/folder/recommend/view/a;

    invoke-direct {v5, p0}, Lcom/android/launcher/folder/recommend/view/a;-><init>(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v5, "alphaFadeIn2"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$updateHotAreaAlphaAnim$$inlined$addListener$default$2;

    invoke-direct {v5, v1}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$updateHotAreaAlphaAnim$$inlined$addListener$default$2;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v0, [I

    fill-array-data v1, :array_c2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v5}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/launcher/guide/f;

    invoke-direct {v5, p0}, Lcom/android/launcher/guide/f;-><init>(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v5, "alphaFadeOut1"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$updateHotAreaAlphaAnim$$inlined$addListener$default$3;

    invoke-direct {v5, v2}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$updateHotAreaAlphaAnim$$inlined$addListener$default$3;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [I

    fill-array-data v0, :array_ca

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher/pageindicators/d;

    invoke-direct {v2, p0}, Lcom/android/launcher/pageindicators/d;-><init>(Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p0, "alphaFadeIn1"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$updateHotAreaAlphaAnim$$inlined$addListener$default$4;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$updateHotAreaAlphaAnim$$inlined$addListener$default$4;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$updateHotAreaAlphaAnim$$inlined$addListener$default$5;

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint$updateHotAreaAlphaAnim$$inlined$addListener$default$5;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_b2
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_ba
    .array-data 4
        0x7f
        0xff
    .end array-data

    :array_c2
    .array-data 4
        0xff
        0x7f
    .end array-data

    :array_ca
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
