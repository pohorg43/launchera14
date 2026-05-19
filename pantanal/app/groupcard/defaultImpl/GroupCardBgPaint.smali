.class public final Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/groupcard/defaultImpl/GroupCardAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;,
        Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$WhenMappings;,
        Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGroupCardBgPaint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupCardBgPaint.kt\npantanal/app/groupcard/defaultImpl/GroupCardBgPaint\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,260:1\n94#2,14:261\n337#3:275\n*S KotlinDebug\n*F\n+ 1 GroupCardBgPaint.kt\npantanal/app/groupcard/defaultImpl/GroupCardBgPaint\n*L\n120#1:261,14\n147#1:275\n*E\n"
    }
.end annotation


# static fields
.field private static final ANIM_IN_DURATION:J = 0xfaL

.field private static final ANIM_OUT_DURATION:J = 0x226L

.field public static final Companion:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Companion;

.field private static final TAG:Ljava/lang/String; = "GroupCardBgPaint"


# instance fields
.field private final boundPath:Landroid/graphics/Path;

.field private mAlpha:I

.field private mAnimInDuration:J

.field private mAnimOutDuration:J

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBgMargin:Landroid/graphics/Rect;

.field private mColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mCurrentRect:Landroid/graphics/Rect;

.field private final mEvaluator:Landroid/animation/RectEvaluator;

.field private mFraction:F

.field private mHeight:I

.field private mMaxRect:Landroid/graphics/Rect;

.field private mMinRect:Landroid/graphics/Rect;

.field private mNeedDraw:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mWidth:I

.field private final oPlusPath:Lcom/oplus/graphics/OplusPath;

.field private final view:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->Companion:Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;Landroid/view/View;)V
    .registers 14

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->view:Landroid/view/View;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mBgMargin:Landroid/graphics/Rect;

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mAnimInDuration:J

    const-wide/16 v0, 0x226

    iput-wide v0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mAnimOutDuration:J

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mMinRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mMaxRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mCurrentRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->boundPath:Landroid/graphics/Path;

    new-instance v0, Lcom/oplus/graphics/OplusPath;

    invoke-direct {v0, p2}, Lcom/oplus/graphics/OplusPath;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->oPlusPath:Lcom/oplus/graphics/OplusPath;

    new-instance p2, Landroid/animation/RectEvaluator;

    invoke-direct {p2}, Landroid/animation/RectEvaluator;-><init>()V

    iput-object p2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mEvaluator:Landroid/animation/RectEvaluator;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "GroupCardBgPaint"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->getColor()I

    move-result p2

    invoke-direct {p0, p2}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->setColor(I)V

    invoke-virtual {p1}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->getRadius()F

    move-result p2

    invoke-virtual {p0, p2}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->setRadius(F)V

    invoke-virtual {p1}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->getPadding()I

    move-result p1

    invoke-virtual {p0, p1}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->setBgMargin(I)V

    return-void
.end method

.method public static synthetic a(Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->createAnimator$lambda$0(Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$setMNeedDraw(Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->setMNeedDraw(Z)V

    return-void
.end method

.method private final animInner(ZJLandroid/view/animation/Interpolator;)V
    .registers 16

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "animInner,animIn:"

    invoke-static {v1, p1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v1, "GroupCardBgPaint"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1d
    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->createAnimator(ZJLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_28
    return-void
.end method

.method private final createAnimator(ZJLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_14

    new-array v2, v2, [F

    iget v3, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mFraction:F

    aput v3, v2, v1

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_21

    :cond_14
    new-array v2, v2, [F

    iget v3, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mFraction:F

    aput v3, v2, v1

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_21
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/launcher/folder/recommend/view/a;

    invoke-direct {p2, p0}, Lcom/android/launcher/folder/recommend/view/a;-><init>(Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p2, "anim"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$createAnimator$$inlined$addListener$default$1;

    move-object v1, p2

    move v2, p1

    move-object v3, p0

    move-object v4, p0

    move v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$createAnimator$$inlined$addListener$default$1;-><init>(ZLpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;ZLpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static synthetic createAnimator$default(Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;ZJLandroid/view/animation/Interpolator;ILjava/lang/Object;)Landroid/animation/ValueAnimator;
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_8

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->createDefaultInterpolator()Lpantanal/app/groupcard/defaultImpl/MoveEaseInterpolator;

    move-result-object p4

    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->createAnimator(ZJLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static final createAnimator$lambda$0(Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mFraction:F

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->updateCurrentRect()V

    iget-object p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final createDefaultInterpolator()Lpantanal/app/groupcard/defaultImpl/MoveEaseInterpolator;
    .registers 1

    new-instance p0, Lpantanal/app/groupcard/defaultImpl/MoveEaseInterpolator;

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/MoveEaseInterpolator;-><init>()V

    return-object p0
.end method

.method private final isShow()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mNeedDraw:Z

    return p0
.end method

.method private final setColor(I)V
    .registers 13
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "set color to "

    invoke-static {v1, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "GroupCardBgPaint"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iput p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mAlpha:I

    iget-object p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private final setMNeedDraw(Z)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "set need draw to "

    invoke-static {v1, p1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v1, "GroupCardBgPaint"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iput-boolean p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mNeedDraw:Z

    return-void
.end method

.method private final updateCurrentRect()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mEvaluator:Landroid/animation/RectEvaluator;

    iget v2, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mFraction:F

    iget-object v3, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mMinRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mMaxRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "this.mEvaluator.evaluate…  this.mMaxRect\n        )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mCurrentRect:Landroid/graphics/Rect;

    iget-object v1, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->boundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->oPlusPath:Lcom/oplus/graphics/OplusPath;

    iget-object v1, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mCurrentRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v5, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mRadius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const v6, 0x3f7d70a4  # 0.99f

    move v4, v5

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/graphics/OplusPath;->addSmoothRoundRect(Landroid/graphics/RectF;FFFLandroid/graphics/Path$Direction;)V

    sget-object v8, Ly8/c;->a:Ly8/c;

    iget-object v1, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mCurrentRect:Landroid/graphics/Rect;

    iget v0, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mRadius:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentRect,Set Bg to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with radius "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v9, "GroupCardBgPaint"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final updateRect()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "GroupCardBgPaint"

    const-string v2, "updateRect"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mMaxRect:Landroid/graphics/Rect;

    iget v1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mWidth:I

    iget v2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mMinRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mMaxRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mBgMargin:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->updateCurrentRect()V

    return-void
.end method


# virtual methods
.method public final animIn()V
    .registers 13

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "GroupCardBgPaint"

    const-string v2, "BgPaint anim in"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "GroupCardBgPaint"

    const-string v2, "animIn,isShow==true,return"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_2b
    const/4 v0, 0x1

    iget-wide v1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mAnimInDuration:J

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->createDefaultInterpolator()Lpantanal/app/groupcard/defaultImpl/MoveEaseInterpolator;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->animInner(ZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public final animOut()V
    .registers 13

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "GroupCardBgPaint"

    const-string v2, "BgPaint anim out"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->isShow()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "GroupCardBgPaint"

    const-string v2, "animOut,isShow==false,return"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_2b
    const/4 v0, 0x0

    iget-wide v1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mAnimOutDuration:J

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->createDefaultInterpolator()Lpantanal/app/groupcard/defaultImpl/MoveEaseInterpolator;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->animInner(ZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public applyAction(Lpantanal/app/groupcard/plugininterface/AnimAction;)Z
    .registers 13

    const-string p0, "action"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check apply action "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "GroupCardBgPaint"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lpantanal/app/groupcard/plugininterface/AnimAction;->getTarget()Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    move-result-object p0

    sget-object p1, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->BACKGROUND:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    if-ne p0, p1, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method

.method public createAnimators(Lpantanal/app/groupcard/plugininterface/AnimAction;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/groupcard/plugininterface/AnimAction;",
            ")",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "action"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/groupcard/plugininterface/AnimAction;->getAction()Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    move-result-object v1

    sget-object v3, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4f

    const/4 v5, 0x2

    if-ne v1, v5, :cond_49

    sget-object v6, Ly8/c;->a:Ly8/c;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "GroupCardBgPaint"

    const-string v8, "createAnimators,AnimAction.Action.OUT"

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/groupcard/plugininterface/AnimAction;->getDuration()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-gez v1, :cond_3b

    iget-wide v3, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mAnimOutDuration:J

    goto :goto_3f

    :cond_3b
    invoke-virtual/range {p1 .. p1}, Lpantanal/app/groupcard/plugininterface/AnimAction;->getDuration()J

    move-result-wide v3

    :goto_3f
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/groupcard/plugininterface/AnimAction;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v0, v1, v3, v4, v2}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->createAnimator(ZJLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_79

    :cond_49
    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/h;-><init>()V

    throw v0

    :cond_4f
    sget-object v6, Ly8/c;->a:Ly8/c;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "GroupCardBgPaint"

    const-string v8, "createAnimators,AnimAction.Action.IN"

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/groupcard/plugininterface/AnimAction;->getDuration()J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-gez v1, :cond_6d

    iget-wide v3, v0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mAnimInDuration:J

    goto :goto_71

    :cond_6d
    invoke-virtual/range {p1 .. p1}, Lpantanal/app/groupcard/plugininterface/AnimAction;->getDuration()J

    move-result-wide v3

    :goto_71
    invoke-virtual/range {p1 .. p1}, Lpantanal/app/groupcard/plugininterface/AnimAction;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-direct {v0, v5, v3, v4, v1}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->createAnimator(ZJLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_79
    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final drawBackground(Landroid/graphics/Canvas;)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "GroupCardBgPaint"

    const-string v2, "drawBackground"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-nez p1, :cond_15

    return-void

    :cond_15
    iget-boolean v0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mNeedDraw:Z

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    iget v0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mAlpha:I

    int-to-float v0, v0

    iget v1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mFraction:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-gtz v0, :cond_24

    return-void

    :cond_24
    iget-object v1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->boundPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final setBgMargin(I)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "set bg margin to "

    invoke-static {v1, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "GroupCardBgPaint"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mBgMargin:Landroid/graphics/Rect;

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->updateRect()V

    return-void
.end method

.method public final setRadius(F)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set radius to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "GroupCardBgPaint"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iput p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mRadius:F

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->updateRect()V

    return-void
.end method

.method public final setSize(II)V
    .registers 14

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "set size to "

    const-string v2, ", "

    invoke-static {v1, p1, v2, p2}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "GroupCardBgPaint"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iput p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mWidth:I

    iput p2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->mHeight:I

    invoke-direct {p0}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;->updateRect()V

    return-void
.end method
