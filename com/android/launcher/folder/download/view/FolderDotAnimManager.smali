.class public final Lcom/android/launcher/folder/download/view/FolderDotAnimManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFolderDotAnimManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderDotAnimManager.kt\ncom/android/launcher/folder/download/view/FolderDotAnimManager\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,61:1\n31#2:62\n94#2,14:63\n*S KotlinDebug\n*F\n+ 1 FolderDotAnimManager.kt\ncom/android/launcher/folder/download/view/FolderDotAnimManager\n*L\n54#1:62\n54#1:63,14\n*E\n"
    }
.end annotation


# static fields
.field private static final DOT_DURATION:J = 0x15eL

.field public static final INSTANCE:Lcom/android/launcher/folder/download/view/FolderDotAnimManager;

.field private static final MAX_ALPHA:J = 0xffL

.field private static final MAX_FRACTION:F = 1.0f

.field private static final MIN_ALPHA:J = 0x0L

.field private static final MIN_FRACTION:F = 0.0f

.field public static final TAG:Ljava/lang/String; = "FolderDotAnimManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/folder/download/view/FolderDotAnimManager;

    invoke-direct {v0}, Lcom/android/launcher/folder/download/view/FolderDotAnimManager;-><init>()V

    sput-object v0, Lcom/android/launcher/folder/download/view/FolderDotAnimManager;->INSTANCE:Lcom/android/launcher/folder/download/view/FolderDotAnimManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;IILandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/folder/download/view/FolderDotAnimManager;->startDotAnim$lambda$3$lambda$1(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final startDotAnim(Lcom/android/launcher/folder/download/view/RecommendDotDrawable;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->getMDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_5c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v2, "ofFloat(MAX_FRACTION, MI…eInterpolator()\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->getMDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_35

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_35
    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->getMDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_5b

    new-instance v4, Ly/a;

    invoke-direct {v4, p0, v2, v0, v3}, Ly/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;II)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher/folder/download/view/FolderDotAnimManager$startDotAnim$lambda$3$$inlined$doOnEnd$1;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher/folder/download/view/FolderDotAnimManager$startDotAnim$lambda$3$$inlined$doOnEnd$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_5b
    return-void

    :array_5c
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private static final startDotAnim$lambda$3$lambda$1(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;IILandroid/animation/ValueAnimator;)V
    .registers 9

    const-string v0, "$drawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    const-wide/16 v0, 0xff

    long-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float p2, p2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr p2, v2

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v3, p4

    mul-float/2addr p2, v3

    add-float/2addr v1, p2

    float-to-int p4, v1

    iput p4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    int-to-float p3, p3

    div-float/2addr p3, v2

    mul-float/2addr p3, v3

    add-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
