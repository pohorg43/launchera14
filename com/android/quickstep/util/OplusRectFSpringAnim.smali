.class public final Lcom/android/quickstep/util/OplusRectFSpringAnim;
.super Lcom/android/quickstep/util/RectFSpringAnim;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;,
        Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;,
        Lcom/android/quickstep/util/OplusRectFSpringAnim$WhenMappings;,
        Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusRectFSpringAnim.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusRectFSpringAnim.kt\ncom/android/quickstep/util/OplusRectFSpringAnim\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,760:1\n1855#2,2:761\n31#3:763\n94#3,14:764\n*S KotlinDebug\n*F\n+ 1 OplusRectFSpringAnim.kt\ncom/android/quickstep/util/OplusRectFSpringAnim\n*L\n311#1:761,2\n426#1:763\n426#1:764,14\n*E\n"
    }
.end annotation


# static fields
.field private static final ACTION_WALLPAPER_SET_THREADUX:Ljava/lang/String; = "wallpaper.set.animationThreadUx"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion;

.field private static final DEFAULT_SWIPE_MAX_VELOCITY_X:F = 18.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_SWIPE_MAX_VELOCITY_Y:F = 18.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OPLUS_BLUR_SCALE_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OPLUS_DRAG_SCALE_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OPLUS_RECT_CENTER_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OPLUS_RECT_SCALE_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OPLUS_RECT_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final REVERSE_SPRING_PARAMS:[[F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TABLET_HORIZONTAL_SWIPE_MAX_VELOCITY:F = 16.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusRectFSpringAnim"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final UXENABLE:Ljava/lang/String; = "uxEnable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final mExtras:Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private assistantAlpha:F

.field private assistantAnim:Landroid/animation/ValueAnimator;

.field private assistantAnimEnded:Z

.field private assistantScale:F

.field private enableEndOption:Z

.field private hasInterruptFromRecent:Z

.field private isCancel:Z

.field private isCapsule:Z

.field private isLandscape:Z

.field private isMultiAppsOpen:Z

.field private isReverse:Z

.field private isReverseFirstUpdate:Z

.field private mCurrentBlur:F

.field private mCurrentDragScale:F

.field private mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

.field private mRectBlurAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

.field private mRectBlurAnimEnded:Z

.field private mRectDragScaleAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

.field private mRectDragScaleAnimEnded:Z

.field private mRectScaleAnim:Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

.field private mRectXAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

.field private mRectYAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

.field private mReverseParams:Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;

.field private miniVisibilityChange:F

.field private recentToHomeAnimWindowParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

.field private reverseBlurStart:F

.field private reverseCurrentRect:Landroid/graphics/RectF;

.field private reverseEnd:F

.field private reverseScaleStart:F

.field private reverseStart:F

.field private scaleAnimVelocity:F

.field private viewSupportAsync:Z

.field private withAssistant:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->Companion:Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mExtras:Landroid/os/Bundle;

    const/4 v0, 0x2

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_48

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [F

    fill-array-data v0, :array_50

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/quickstep/util/OplusRectFSpringAnim;->REVERSE_SPRING_PARAMS:[[F

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_CENTER_X$1;

    invoke-direct {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_CENTER_X$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_RECT_CENTER_X:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_Y$1;

    invoke-direct {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_Y$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_RECT_Y:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_SCALE_PROGRESS$1;

    invoke-direct {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_SCALE_PROGRESS$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_RECT_SCALE_PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_BLUR_SCALE_PROGRESS$1;

    invoke-direct {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_BLUR_SCALE_PROGRESS$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_BLUR_SCALE_PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_DRAG_SCALE_PROGRESS$1;

    invoke-direct {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_DRAG_SCALE_PROGRESS$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_DRAG_SCALE_PROGRESS:Landroid/util/FloatProperty;

    return-void

    :array_48
    .array-data 4
        0x441ab0a4  # 618.76f
        0x3f9020c5  # 1.126f
    .end array-data

    :array_50
    .array-data 4
        0x435c0000  # 220.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V

    const-string/jumbo p1, "mStartRect="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mTargetRect="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string p4, "OplusRectFSpringAnim"

    invoke-static {p2, p4, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantScale:F

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAlpha:F

    const/4 p1, 0x1

    int-to-float p2, p1

    iget-object p4, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    div-float/2addr p2, p4

    iput p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->miniVisibilityChange:F

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reverseCurrentRect:Landroid/graphics/RectF;

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->enableEndOption:Z

    const/4 p2, 0x0

    if-eqz p3, :cond_5b

    sget-object p4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p4, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p3}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-ne p3, p1, :cond_53

    move p4, p1

    goto :goto_54

    :cond_53
    move p4, p2

    :goto_54
    const/4 v0, 0x3

    if-ne p3, v0, :cond_58

    goto :goto_59

    :cond_58
    move p1, p2

    :goto_59
    or-int p2, p4, p1

    :cond_5b
    iput-boolean p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isLandscape:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Z)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V

    const-string/jumbo p1, "mStartRect="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mTargetRect="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string p4, "OplusRectFSpringAnim"

    invoke-static {p2, p4, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantScale:F

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAlpha:F

    const/4 p1, 0x1

    int-to-float p2, p1

    iget-object p4, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    div-float/2addr p2, p4

    iput p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->miniVisibilityChange:F

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reverseCurrentRect:Landroid/graphics/RectF;

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->enableEndOption:Z

    iput-boolean p5, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->withAssistant:Z

    const/4 p2, 0x0

    if-eqz p3, :cond_5d

    sget-object p4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p4, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p3}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-ne p3, p1, :cond_55

    move p4, p1

    goto :goto_56

    :cond_55
    move p4, p2

    :goto_56
    const/4 p5, 0x3

    if-ne p3, p5, :cond_5a

    goto :goto_5b

    :cond_5a
    move p1, p2

    :goto_5b
    or-int p2, p4, p1

    :cond_5d
    iput-boolean p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isLandscape:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;ZZ)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V

    const-string/jumbo p1, "mStartRect="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mTargetRect="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string p3, "OplusRectFSpringAnim"

    invoke-static {p2, p3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantScale:F

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAlpha:F

    const/4 p1, 0x1

    int-to-float p2, p1

    iget-object p3, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p2, p3

    iput p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->miniVisibilityChange:F

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reverseCurrentRect:Landroid/graphics/RectF;

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->enableEndOption:Z

    iput-boolean p5, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->withAssistant:Z

    iput-boolean p6, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->viewSupportAsync:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;ZLcom/android/launcher3/DeviceProfile;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V

    const-string/jumbo p1, "mStartRect="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mTargetRect="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string p5, "OplusRectFSpringAnim"

    invoke-static {p2, p5, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantScale:F

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAlpha:F

    const/4 p1, 0x1

    int-to-float p2, p1

    iget-object p5, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result p5

    div-float/2addr p2, p5

    iput p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->miniVisibilityChange:F

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reverseCurrentRect:Landroid/graphics/RectF;

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->enableEndOption:Z

    const/4 p2, 0x0

    if-eqz p3, :cond_5b

    sget-object p5, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p5, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p3}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-ne p3, p1, :cond_53

    move p5, p1

    goto :goto_54

    :cond_53
    move p5, p2

    :goto_54
    const/4 v0, 0x3

    if-ne p3, v0, :cond_58

    goto :goto_59

    :cond_58
    move p1, p2

    :goto_59
    or-int p2, p5, p1

    :cond_5b
    iput-boolean p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isLandscape:Z

    iput-boolean p4, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCapsule:Z

    return-void
.end method

.method public static final synthetic access$getMCurrentBlur$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;)F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mCurrentBlur:F

    return p0
.end method

.method public static final synthetic access$getMCurrentDragScale$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;)F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mCurrentDragScale:F

    return p0
.end method

.method public static final synthetic access$getREVERSE_SPRING_PARAMS$cp()[[F
    .registers 1

    sget-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->REVERSE_SPRING_PARAMS:[[F

    return-object v0
.end method

.method public static final synthetic access$getRecentToHomeAnimWindowParam$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;)Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->recentToHomeAnimWindowParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    return-object p0
.end method

.method public static final synthetic access$setAssistantAlpha$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAlpha:F

    return-void
.end method

.method public static final synthetic access$setAssistantAnimEnded$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnimEnded:Z

    return-void
.end method

.method public static final synthetic access$setAssistantScale$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantScale:F

    return-void
.end method

.method public static final synthetic access$setMCurrentBlur$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mCurrentBlur:F

    return-void
.end method

.method public static final synthetic access$setMCurrentDragScale$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mCurrentDragScale:F

    return-void
.end method

.method private final adjustVelocityX(F)F
    .registers 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x41900000  # 18.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_b

    goto :goto_f

    :cond_b
    invoke-static {v0, p1}, Ljava/lang/Math;->copySign(FF)F

    move-result p1

    :goto_f
    return p1
.end method

.method private final adjustVelocityY(F)F
    .registers 3

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isLandscape:Z

    if-eqz p0, :cond_d

    const/high16 p0, 0x41800000  # 16.0f

    goto :goto_f

    :cond_d
    const/high16 p0, 0x41900000  # 18.0f

    :goto_f
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p0

    if-gez v0, :cond_18

    goto :goto_1c

    :cond_18
    invoke-static {p0, p1}, Ljava/lang/Math;->copySign(FF)F

    move-result p1

    :goto_1c
    return p1
.end method

.method private final cancelInRecentReverseInterrupt()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;

    invoke-interface {v1}, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;->interruptInRecentReverse()V

    invoke-interface {v1}, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;->onCancel()V

    goto :goto_a

    :cond_1d
    invoke-super {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->cancel()V

    return-void
.end method

.method private final createAssistantScreenEnterAnim()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_36

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_35

    sget v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v1

    sget-object v2, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v2, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_DURATION_MS:[I

    aget v1, v2, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/quickstep/util/OplusRectFSpringAnim$createAssistantScreenEnterAnim$lambda$18$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$createAssistantScreenEnterAnim$lambda$18$$inlined$doOnEnd$1;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_35
    return-void

    :array_36
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final createAssistantScreenEnterAnim$lambda$18$lambda$16(Lcom/android/quickstep/util/OplusRectFSpringAnim;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3f666666  # 0.9f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantScale:F

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAlpha:F

    sget-object p1, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_ASSIST:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->onUpdateIfNeed(Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start$lambda$8$lambda$7(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start$lambda$6(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start$lambda$11(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic h(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start$lambda$4$lambda$3(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/quickstep/util/OplusRectFSpringAnim;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->createAssistantScreenEnterAnim$lambda$18$lambda$16(Lcom/android/quickstep/util/OplusRectFSpringAnim;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start$lambda$4(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic k(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;FF)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start$lambda$9(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic l(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->maybeOnEnd$lambda$15(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/quickstep/util/OplusRectFSpringAnim;Ljava/lang/Float;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->onUpdate$lambda$22(Lcom/android/quickstep/util/OplusRectFSpringAnim;Ljava/lang/Float;)V

    return-void
.end method

.method private static final maybeOnEnd$lambda$15(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    instance-of v1, v0, Lcom/android/launcher3/anim/AnimationSuccessListener;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/android/launcher3/anim/AnimationSuccessListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationSuccess(Landroid/animation/Animator;)V

    goto :goto_c

    :cond_23
    return-void
.end method

.method public static synthetic n(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start$lambda$8(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic o(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start$lambda$6$lambda$5(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    return-void
.end method

.method private static final onUpdate$lambda$20(Lcom/android/quickstep/util/OplusRectFSpringAnim;Z)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCapsule:Z

    if-nez v0, :cond_20

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isMultiOpen()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->allRecentsAnimationEnd()Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_20
    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAleardyNotifyAnimEnd:Z

    if-eqz v0, :cond_32

    const-string p1, "anim already end return mAleardyNotifyAnimEnd = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAleardyNotifyAnimEnd:Z

    const-string v0, "OplusRectFSpringAnim"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    :cond_32
    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    if-eqz v0, :cond_3b

    iget p0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    invoke-virtual {v0, p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->update(FZ)V

    :cond_3b
    return-void
.end method

.method private static final onUpdate$lambda$22(Lcom/android/quickstep/util/OplusRectFSpringAnim;Ljava/lang/Float;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    if-eqz v0, :cond_17

    new-instance v0, Lcom/android/quickstep/util/t;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/t;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;Ljava/lang/Float;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->switchToMainThread(Ljava/lang/Runnable;)V

    :cond_17
    return-void
.end method

.method private static final onUpdate$lambda$22$lambda$21(Lcom/android/quickstep/util/OplusRectFSpringAnim;Ljava/lang/Float;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAleardyNotifyAnimEnd:Z

    if-eqz v0, :cond_1d

    const-string p1, "anim cancel,mAleardyNotifyAnimEnd = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAleardyNotifyAnimEnd:Z

    const-string v0, "OplusRectFSpringAnim"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse:Z

    invoke-virtual {v0, p1, p0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->update(FZ)V

    :cond_2a
    return-void
.end method

.method public static synthetic p(Lcom/android/quickstep/util/OplusRectFSpringAnim;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->onUpdate$lambda$20(Lcom/android/quickstep/util/OplusRectFSpringAnim;Z)V

    return-void
.end method

.method public static synthetic q(Lcom/android/quickstep/util/OplusRectFSpringAnim;Ljava/lang/Float;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->onUpdate$lambda$22$lambda$21(Lcom/android/quickstep/util/OplusRectFSpringAnim;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start$lambda$10(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method private static final start$lambda$10(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectBlurAnimEnded:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method private static final start$lambda$11(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectDragScaleAnimEnded:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method private static final start$lambda$4(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/quickstep/c1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/c1;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->switchToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final start$lambda$4$lambda$3(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "OplusRectFSpringAnim"

    const-string/jumbo v2, "mRectXAnimEnded = true"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnimEnded:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method private static final start$lambda$6(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/quickstep/util/n;

    invoke-direct {p1, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->switchToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final start$lambda$6$lambda$5(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "OplusRectFSpringAnim"

    const-string/jumbo v2, "mRectYAnimEnded = true"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method private static final start$lambda$8(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/quickstep/util/s;

    invoke-direct {p1, p0}, Lcom/android/quickstep/util/s;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->switchToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final start$lambda$8$lambda$7(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRectScaleAnim end. isRunning?="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->isRunning()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRectFSpringAnim"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3a

    move v2, v1

    :cond_3a
    if-eqz v2, :cond_3e

    iput-boolean v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    :cond_3e
    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method private static final start$lambda$9(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/util/animation/DynamicAnimation;FF)V
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p3, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->scaleAnimVelocity:F

    return-void
.end method

.method private final switchToMainThread(Ljava/lang/Runnable;)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic updateTargetRect$default(Lcom/android/quickstep/util/OplusRectFSpringAnim;Landroid/graphics/RectF;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->updateTargetRect(Landroid/graphics/RectF;Z)V

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 4

    instance-of v0, p1, Lcom/android/launcher3/anim/AnimationSuccessListener;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/anim/AnimationSuccessListener;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->enableEndOption:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->setCallSuccess(Z)V

    :cond_10
    invoke-super {p0, p1}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCancel:Z

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->hasInterruptFromRecent:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->cancelInRecentReverseInterrupt()V

    goto :goto_e

    :cond_b
    invoke-super {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->cancel()V

    :goto_e
    return-void
.end method

.method public final cancelLauncherContentAnim()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusRectFSpringAnim"

    const-string v2, "cancelLauncherContentAnim()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectDragScaleAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectDragScaleAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    :cond_21
    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectBlurAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    if-eqz v1, :cond_36

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectBlurAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    :cond_36
    return-void
.end method

.method public cancelWithoutEndAnim()V
    .registers 5

    const-string v0, "cancelWithoutEndAnim: hasInterruptFromRecent = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->hasInterruptFromRecent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimsStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    const-string v2, "OplusRectFSpringAnim"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->hasInterruptFromRecent:Z

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;

    invoke-interface {v1}, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;->interruptInRecentReverse()V

    goto :goto_25

    :cond_35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAleardyNotifyAnimEnd:Z

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->setCanRelease(Z)V

    iget-object v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_41

    :cond_52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->hasInterruptFromRecent:Z

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    instance-of v1, p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    if-eqz v1, :cond_6a

    const-string/jumbo v1, "null cannot be cast to non-null type com.oplus.quickstep.anim.DragLayerContentAnim"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/oplus/quickstep/anim/DragLayerContentAnim;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/anim/DragLayerContentAnim;->setMResetDragLayerState(Z)V

    goto :goto_6a

    :cond_67
    invoke-super {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->cancel()V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public final computeNextFrameAnimValue()V
    .registers 4

    const-string v0, "computeNextFrameAnimValue, isReverse = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse:Z

    const-string v2, "MultiAppLaunchInterrupt"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse:Z

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->commitAnimationValue()V

    :cond_18
    return-void
.end method

.method public final copyContentParamFromOpenAnim(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyContentParamFromOpenAnim, openParam = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiAppLaunchInterrupt"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    if-eqz p0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->copyFromLastParam(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;)V

    :cond_1d
    return-void
.end method

.method public doOnUpdate()V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;

    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    iget v4, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantScale:F

    iget v5, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAlpha:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;FFF)V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public end()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectXAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->end()V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectYAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->end()V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->canSkipToEnd()Z

    move-result v0

    if-ne v0, v2, :cond_22

    move v0, v2

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->skipToEnd()V

    :cond_2c
    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectBlurAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-ne v0, v2, :cond_38

    move v0, v2

    goto :goto_39

    :cond_38
    move v0, v1

    :goto_39
    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectBlurAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->skipToEnd()V

    :cond_42
    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectDragScaleAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-ne v0, v2, :cond_4e

    move v0, v2

    goto :goto_4f

    :cond_4e
    move v0, v1

    :goto_4f
    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectDragScaleAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->skipToEnd()V

    :cond_58
    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_69

    :cond_60
    const-string v0, "QuickStep"

    const-string v3, "OplusRectFSpringAnim"

    const-string v4, "end: mAnimsStarted = false"

    invoke-static {v0, v3, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    :goto_69
    iput-boolean v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnimEnded:Z

    iput-boolean v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    iput-boolean v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    iput-boolean v2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectBlurAnimEnded:Z

    iput-boolean v2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectDragScaleAnimEnded:Z

    iput-boolean v2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnimEnded:Z

    iput-boolean v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->hasInterruptFromRecent:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public final getEnableEndOption()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->enableEndOption:Z

    return p0
.end method

.method public final getHasInterruptFromRecent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->hasInterruptFromRecent:Z

    return p0
.end method

.method public final getMRectBlurAnimEnded()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectBlurAnimEnded:Z

    return p0
.end method

.method public final getMRectDragScaleAnimEnded()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectDragScaleAnimEnded:Z

    return p0
.end method

.method public final isCanceled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCancel:Z

    return p0
.end method

.method public final isCapsule()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCapsule:Z

    return p0
.end method

.method public isEnded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnimEnded:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    if-eqz v0, :cond_12

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnimEnded:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final isMultiAppsOpen()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isMultiAppsOpen:Z

    return p0
.end method

.method public final isReverse()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse:Z

    return p0
.end method

.method public maybeOnEnd()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCancel:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    if-eqz v2, :cond_17

    invoke-virtual {v2, v1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->setReverseSceneState(Z)V

    :cond_17
    move v1, v0

    :cond_18
    invoke-super {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->maybeOnEnd()V

    if-eqz v1, :cond_43

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-boolean v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->enableEndOption:Z

    if-nez v1, :cond_43

    new-instance v1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->canFinishRecentsAnim(Lcom/android/quickstep/util/OplusRectFSpringAnim;)Z

    move-result p0

    if-eqz p0, :cond_3c

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/controller/a;->run()V

    goto :goto_43

    :cond_3c
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setRecentsAnimFinishCallback(Ljava/lang/Runnable;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public onTargetPositionChanged()V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectXAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->getTargetPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectXAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    if-eqz v0, :cond_29

    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->updatePosition(FF)V

    :cond_29
    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectYAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    if-eqz v0, :cond_7f

    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTracking:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6b

    if-eq v1, v3, :cond_4e

    const/4 v4, 0x2

    if-eq v1, v4, :cond_39

    goto :goto_7f

    :cond_39
    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->getTargetPosition()F

    move-result v1

    iget-object v4, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v4

    if-nez v1, :cond_46

    move v2, v3

    :cond_46
    if-nez v2, :cond_7f

    iget p0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    invoke-virtual {v0, p0, v4}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->updatePosition(FF)V

    goto :goto_7f

    :cond_4e
    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->getTargetPosition()F

    move-result v1

    iget-object v4, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    cmpg-float v1, v1, v4

    if-nez v1, :cond_5d

    move v2, v3

    :cond_5d
    if-nez v2, :cond_7f

    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    iget-object p0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->updatePosition(FF)V

    goto :goto_7f

    :cond_6b
    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->getTargetPosition()F

    move-result v1

    iget-object v4, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v4

    if-nez v1, :cond_78

    move v2, v3

    :cond_78
    if-nez v2, :cond_7f

    iget p0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    invoke-virtual {v0, p0, v4}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->updatePosition(FF)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method public onUpdate()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    const-string/jumbo v1, "mOnUpdateListeners"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9c

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse:Z

    if-nez v0, :cond_85

    iget v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    iget-object v3, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    iget-object v4, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    new-instance v4, Lcom/android/common/util/q;

    invoke-direct {v4, p0, v0}, Lcom/android/common/util/q;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;Z)V

    invoke-direct {p0, v4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->switchToMainThread(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTracking:I

    const/4 v4, 0x2

    if-eqz v0, :cond_75

    if-eq v0, v1, :cond_62

    if-eq v0, v4, :cond_51

    goto :goto_9c

    :cond_51
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float v4, v1, v2

    iget v5, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    sub-float v3, v5, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v4, v3, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_9c

    :cond_62
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float v5, v1, v2

    iget v6, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    div-float/2addr v3, v4

    sub-float v4, v6, v3

    add-float/2addr v1, v2

    add-float/2addr v6, v3

    invoke-virtual {v0, v5, v4, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_9c

    :cond_75
    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float v4, v1, v2

    iget v5, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    add-float/2addr v1, v2

    add-float/2addr v3, v5

    invoke-virtual {v0, v4, v5, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_9c

    :cond_85
    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mReverseParams:Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;

    if-eqz v0, :cond_9c

    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTracking:I

    iget v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    iget-object v3, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    const-string v4, "mCurrentRect"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/android/common/util/n;

    invoke-direct {v4, p0}, Lcom/android/common/util/n;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->getNextFrameRectF(IFLandroid/graphics/RectF;Ljava/util/function/Consumer;)V

    :cond_9c
    :goto_9c
    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->doOnUpdate()V

    return-void
.end method

.method public final onUpdateIfNeed(Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;)V
    .registers 3

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    goto :goto_33

    :cond_18
    iget-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    if-nez p1, :cond_33

    return-void

    :cond_1d
    iget-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    if-eqz p1, :cond_25

    iget-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    if-nez p1, :cond_33

    :cond_25
    return-void

    :cond_26
    iget-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnimEnded:Z

    if-eqz p1, :cond_36

    iget-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    if-eqz p1, :cond_36

    iget-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    if-nez p1, :cond_33

    goto :goto_36

    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->onUpdate()V

    :cond_36
    :goto_36
    return-void
.end method

.method public final reallyCancel()V
    .registers 5

    const-string v0, "OplusRectFSpringAnim"

    const-string/jumbo v1, "reallyCancel"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCancel:Z

    iget-boolean v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;

    invoke-interface {v3, v2}, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;->onCancel(Z)V

    goto :goto_16

    :cond_26
    iget-object v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectXAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->cancel()V

    :cond_2d
    iget-object v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectYAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->cancel()V

    :cond_34
    iget-object v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    if-eqz v1, :cond_3d

    iget v3, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->animateToFinalPosition(F)V

    :cond_3d
    iget-object v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->cancel()V

    :cond_44
    iget-object v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectBlurAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/android/quickstep/util/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v1

    if-ne v1, v0, :cond_50

    move v1, v0

    goto :goto_51

    :cond_50
    move v1, v2

    :goto_51
    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectBlurAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Lcom/android/quickstep/util/animation/SpringAnimation;->skipToEnd()V

    :cond_5a
    iget-object v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectDragScaleAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Lcom/android/quickstep/util/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v1

    if-ne v1, v0, :cond_66

    move v1, v0

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectDragScaleAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Lcom/android/quickstep/util/animation/SpringAnimation;->skipToEnd()V

    :cond_70
    iget-object v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_77

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_77
    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnimEnded:Z

    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    iput-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    iput-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectBlurAnimEnded:Z

    iput-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectDragScaleAnimEnded:Z

    iput-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnimEnded:Z

    iput-boolean v2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->hasInterruptFromRecent:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public final reverseAnimationToFullscreen(Landroid/graphics/RectF;Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;)V
    .registers 9

    const-string/jumbo v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reverseAnimationToFullscreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRectFSpringAnim"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->revertRecentsAnimation(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    iget v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_4f

    move v0, v4

    goto :goto_50

    :cond_4f
    move v0, v3

    :goto_50
    if-eqz v0, :cond_63

    const-string v0, "Reverse to fast, special handing."

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x3dcccccd  # 0.1f

    iput v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_63
    iput-boolean v3, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    if-eqz v0, :cond_6c

    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->setReversing(Z)V

    :cond_6c
    iput-boolean v4, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse:Z

    iget v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mCurrentDragScale:F

    iput v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reverseScaleStart:F

    iget v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mCurrentBlur:F

    iput v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reverseBlurStart:F

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;

    invoke-direct {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;-><init>()V

    iget v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->setReverseStart(F)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->setReverseEnd(F)V

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->getStartRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v5, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->getEndRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->getStartRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/RectFSpringAnim;->getTrackedYFromRect(Landroid/graphics/RectF;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->setStartY(F)V

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->getEndRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/RectFSpringAnim;->getTrackedYFromRect(Landroid/graphics/RectF;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;->setEndY(F)V

    iput-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mReverseParams:Lcom/android/quickstep/util/OplusRectFSpringAnim$ReverseParams;

    iget-object p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    if-eqz p1, :cond_db

    const/high16 v0, 0x3f800000  # 1.0f

    sget v2, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    cmpg-float v5, v2, v1

    if-nez v5, :cond_b9

    move v5, v4

    goto :goto_ba

    :cond_b9
    move v5, v3

    :goto_ba
    if-nez v5, :cond_be

    mul-float v0, v2, v2

    :cond_be
    invoke-virtual {p1, v1}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->setStartVelocity(F)V

    sget v2, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v2

    sget-object v5, Lcom/android/quickstep/util/OplusRectFSpringAnim;->REVERSE_SPRING_PARAMS:[[F

    aget-object v2, v5, v2

    invoke-virtual {p1}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->getSpring()Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object p1

    aget v4, v2, v4

    invoke-virtual {p1, v4}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object p1

    aget v2, v2, v3

    div-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    :cond_db
    iput-object p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->recentToHomeAnimWindowParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    if-nez p2, :cond_e0

    goto :goto_e5

    :cond_e0
    iget p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->scaleAnimVelocity:F

    invoke-virtual {p2, p1}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->setVelocity(F)V

    :goto_e5
    iget-object p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->recentToHomeAnimWindowParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    if-nez p1, :cond_ea

    goto :goto_ef

    :cond_ea
    iget p2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->miniVisibilityChange:F

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->setMiniVisibilityChange(F)V

    :goto_ef
    iget-object p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->recentToHomeAnimWindowParam:Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    if-nez p1, :cond_f4

    goto :goto_f9

    :cond_f4
    iget p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;->setCurrentValue(F)V

    :goto_f9
    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    if-eqz p0, :cond_100

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->animateToFinalPosition(F)V

    :cond_100
    return-void
.end method

.method public final setCapsule(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCapsule:Z

    return-void
.end method

.method public final setEnableEndOption(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->enableEndOption:Z

    return-void
.end method

.method public final setHasInterruptFromRecent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->hasInterruptFromRecent:Z

    return-void
.end method

.method public final setLauncherContentAnim(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLauncherContentAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRectFSpringAnim"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    return-void
.end method

.method public final setMRectBlurAnimEnded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectBlurAnimEnded:Z

    return-void
.end method

.method public final setMRectDragScaleAnimEnded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectDragScaleAnimEnded:Z

    return-void
.end method

.method public final setMiniVisibilityChange(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->miniVisibilityChange:F

    return-void
.end method

.method public final setMultiAppsOpen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isMultiAppsOpen:Z

    return-void
.end method

.method public final setReverse(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse:Z

    return-void
.end method

.method public final start(Landroid/graphics/PointF;)V
    .registers 27

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const-string/jumbo v0, "velocityPxPerMs"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    const-string v14, "OplusRectFSpringAnim"

    const-string v15, "QuickStep"

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start: velocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLandscape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isLandscape:Z

    invoke-static {v0, v1, v15, v14}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2c
    new-instance v7, Lcom/android/quickstep/util/j;

    invoke-direct {v7, v12}, Lcom/android/quickstep/util/j;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    new-instance v11, Lcom/android/quickstep/util/h;

    invoke-direct {v11, v12}, Lcom/android/quickstep/util/h;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    iget v0, v13, Landroid/graphics/PointF;->x:F

    invoke-direct {v12, v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->adjustVelocityX(F)F

    move-result v0

    new-instance v10, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    new-instance v9, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    sget-object v2, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_RECT_CENTER_X:Landroid/util/FloatProperty;

    iget v3, v12, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    iget-object v1, v12, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    const/16 v1, 0x3e8

    int-to-float v8, v1

    mul-float v5, v0, v8

    const/high16 v6, 0x3f800000  # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x1

    iget-boolean v1, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCapsule:Z

    iget-boolean v0, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->viewSupportAsync:Z

    move/from16 v18, v0

    move-object v0, v9

    move/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v8

    move/from16 v8, v16

    move-object/from16 v21, v9

    move/from16 v9, v17

    move-object/from16 v22, v10

    move/from16 v10, v19

    move-object/from16 v16, v11

    move/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFFFLcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;IZZZ)V

    iget-boolean v0, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->viewSupportAsync:Z

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    invoke-direct {v1, v2, v0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;-><init>(Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;Z)V

    iput-object v1, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectXAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    iget v0, v12, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    iget-object v2, v12, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->updatePosition(FF)V

    iget-object v0, v12, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v12, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->getTrackedYFromRect(Landroid/graphics/RectF;)F

    move-result v11

    iget v0, v13, Landroid/graphics/PointF;->y:F

    invoke-direct {v12, v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->adjustVelocityY(F)F

    move-result v0

    new-instance v10, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    new-instance v9, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    sget-object v2, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_RECT_Y:Landroid/util/FloatProperty;

    iget v3, v12, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    mul-float v5, v0, v20

    const v0, 0x3dcccccd  # 0.1f

    const v1, 0x3f666666  # 0.9f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v1

    const v1, 0x469c4000  # 20000.0f

    div-float/2addr v4, v1

    add-float v6, v4, v0

    const/4 v8, 0x1

    const/16 v17, 0x0

    iget-boolean v7, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCapsule:Z

    iget-boolean v4, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->viewSupportAsync:Z

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v18, v4

    move v4, v11

    move/from16 v19, v7

    move-object/from16 v7, v16

    move-object/from16 v23, v9

    move/from16 v9, v17

    move-object/from16 v24, v10

    move/from16 v10, v19

    move v13, v11

    move/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFFFLcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;IZZZ)V

    iget-boolean v0, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->viewSupportAsync:Z

    move-object/from16 v2, v23

    move-object/from16 v1, v24

    invoke-direct {v1, v2, v0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;-><init>(Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;Z)V

    iput-object v1, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectYAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    iget v0, v12, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    invoke-virtual {v1, v0, v13}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->updatePosition(FF)V

    iget v0, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->miniVisibilityChange:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_101

    const-string v1, "Get minimum visible change less than 0, "

    const-string v2, ", "

    invoke-static {v1, v0, v2}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v12, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v14, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x3b03126f  # 0.002f

    :cond_101
    new-instance v1, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    new-instance v2, Lcom/android/quickstep/util/animation/SpringAnimation;

    sget-object v3, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_RECT_SCALE_PROGRESS:Landroid/util/FloatProperty;

    invoke-direct {v2, v12, v3}, Lcom/android/quickstep/util/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    const/4 v3, 0x2

    iget-boolean v4, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCapsule:Z

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->initSpringForce(FIZZ)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/animation/SpringAnimation;->setSpring(Lcom/android/quickstep/util/animation/SpringForce;)Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object v2

    move-object/from16 v3, p1

    iget v4, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v0

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setStartVelocity(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {v2, v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/animation/SpringAnimation;

    new-instance v4, Lcom/android/quickstep/util/k;

    invoke-direct {v4, v12}, Lcom/android/quickstep/util/k;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object v2

    const-string v4, "SpringAnimation(this, OP…          }\n            }"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/quickstep/util/animation/SpringAnimation;

    iget-boolean v4, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->viewSupportAsync:Z

    invoke-direct {v1, v2, v4}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;-><init>(Lcom/android/quickstep/util/animation/SpringAnimation;Z)V

    iput-object v1, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    new-instance v2, Lcom/android/quickstep/util/m;

    invoke-direct {v2, v12}, Lcom/android/quickstep/util/m;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->addOnUpdateListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/quickstep/util/animation/SpringAnimation;

    new-instance v1, Lcom/android/quickstep/util/animation/SpringAnimation;

    sget-object v2, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_BLUR_SCALE_PROGRESS:Landroid/util/FloatProperty;

    invoke-direct {v1, v12, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    const/4 v2, 0x3

    iget-boolean v4, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCapsule:Z

    invoke-static {v5, v2, v4, v6}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->initSpringForce(FIZZ)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;->setSpring(Lcom/android/quickstep/util/animation/SpringForce;)Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object v1

    iget v2, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setStartVelocity(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/animation/SpringAnimation;

    new-instance v2, Lcom/android/quickstep/util/l;

    invoke-direct {v2, v12}, Lcom/android/quickstep/util/l;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/animation/SpringAnimation;

    iput-object v1, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectBlurAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    new-instance v1, Lcom/android/quickstep/util/animation/SpringAnimation;

    sget-object v2, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_DRAG_SCALE_PROGRESS:Landroid/util/FloatProperty;

    invoke-direct {v1, v12, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    const/4 v2, 0x4

    iget-boolean v4, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isCapsule:Z

    invoke-static {v5, v2, v4, v6}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->initSpringForce(FIZZ)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/SpringAnimation;->setSpring(Lcom/android/quickstep/util/animation/SpringForce;)Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object v1

    iget v2, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setStartVelocity(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/animation/SpringAnimation;

    new-instance v1, Lcom/android/quickstep/util/i;

    invoke-direct {v1, v12}, Lcom/android/quickstep/util/i;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/animation/SpringAnimation;

    iput-object v0, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectDragScaleAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    iget-boolean v0, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->withAssistant:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1ad

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->createAssistantScreenEnterAnim()V

    goto :goto_1af

    :cond_1ad
    iput-boolean v1, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnimEnded:Z

    :goto_1af
    iget-object v0, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectXAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    if-eqz v0, :cond_1b6

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->start()V

    :cond_1b6
    iget-object v0, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectYAnim:Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;

    if-eqz v0, :cond_1bd

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusAsyncSwipeUpSpringAnimWrapper;->start()V

    :cond_1bd
    iget-object v0, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    if-eqz v0, :cond_1c4

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->start()V

    :cond_1c4
    iget-object v0, v12, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1cb

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1cb
    iput-boolean v1, v12, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    iget-object v0, v12, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/List;

    const-string v1, "mAnimatorListeners"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_1d8

    :cond_1e9
    return-void
.end method

.method public final upDateBlur(F)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse:Z

    if-nez v0, :cond_c

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    if-eqz p0, :cond_22

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->updateBlur(F)V

    goto :goto_22

    :cond_c
    iget v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mCurrentBlur:F

    iget v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reverseBlurStart:F

    iget v2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reverseEnd:F

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    if-eqz p0, :cond_22

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->updateBlur(F)V

    :cond_22
    :goto_22
    return-void
.end method

.method public final upDateScale(F)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse:Z

    if-nez v0, :cond_c

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    if-eqz p0, :cond_22

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->updateScale(F)V

    goto :goto_22

    :cond_c
    iget v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mCurrentDragScale:F

    iget v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reverseScaleStart:F

    iget v2, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->reverseEnd:F

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mDragLayerContentAnim:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    if-eqz p0, :cond_22

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->updateScale(F)V

    :cond_22
    :goto_22
    return-void
.end method

.method public final updateTargetRect(Landroid/graphics/RectF;Z)V
    .registers 4

    const-string/jumbo v0, "targetRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    if-eqz p2, :cond_2b

    const-string/jumbo p1, "updateTargetRect: mTargetRect == "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string v0, "OplusRectFSpringAnim"

    invoke-static {p2, v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->onTargetPositionChanged()V

    :cond_2b
    return-void
.end method
