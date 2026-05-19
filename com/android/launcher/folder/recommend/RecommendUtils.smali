.class public Lcom/android/launcher/folder/recommend/RecommendUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AUTO_UNBIND_TIMEOUT:J = 0x1d4c0L

.field private static final DELAY_OFFSET_PLAY:I = 0x19

.field private static final DURATION_APP_ICON_SHOW:I = 0x1c2

.field private static final DURATION_APP_SHOW:I = 0x1c2

.field private static final DURATION_FOOTER_TITLE_SHOW:I = 0x1c2

.field private static final DURATION_LOAD_FAILED_MSG_SHOW:I = 0x1c2

.field private static final DURATION_LOAD_FAILED_TRANSLATION_Y:I = 0x1c2

.field private static final DURATION_LOAD_ICON_HIDE:I = 0x14d

.field private static final INTERPOLATOR_APP_ICON_SHOW:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_FOOTER_TITLE_SHOW:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_LOAD_ICON_HIDE:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_LOAD_MSG_SHOW:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_LOAD_MSG_TRANSLATION_Y:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Ljava/lang/String; = "RecommendUtils"

.field private static final TITLE_MUST_PLAY:Ljava/lang/String; = "\u00a0Must Play"

.field private static final TITLE_ORIGIN_MORE:Ljava/lang/String; = "\u00a0More Apps"

.field private static final TITLE_ORIGIN_POPULAR:Ljava/lang/String; = "\u00a0Popular Apps"

.field private static final TITLE_ORIGIN_TOOLS:Ljava/lang/String; = "\u00a0Tools"

.field private static final TITLE_ORIGIN_TOP:Ljava/lang/String; = "\u00a0Top Apps"

.field private static final TITLE_SUGGESTED:Ljava/lang/String; = "\u00a0Suggested Apps"

.field private static final sDownloadedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_FOOTER_TITLE_SHOW:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_ICON_HIDE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a  # 0.3f

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_APP_ICON_SHOW:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_MSG_SHOW:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v2, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_MSG_TRANSLATION_Y:Landroid/view/animation/PathInterpolator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->sDownloadedApps:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/View;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/RecommendUtils;->showRecommendLoadingView(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Landroid/view/View;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/RecommendUtils;->hideRecommendLoadingView(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static addDownloadApp(Ljava/lang/String;)V
    .registers 3

    const-string v0, "addDownloadApp: pkgName = "

    const-string v1, "RecommendUtils"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->sDownloadedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static animDownloadBadge(Landroid/view/View;)V
    .registers 4

    sget-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_ICON_HIDE:Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/16 v2, 0x14d

    invoke-static {p0, v1, v2, v0}, Lcom/android/common/config/AnimationConstant;->createCurrentAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static animateFooterTitle(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .registers 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_FOOTER_TITLE_SHOW:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x1

    const/16 v3, 0x1c2

    invoke-static {p0, v2, v3, v1}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-static {p1, v2, v3, v1}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher/folder/recommend/RecommendUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher/folder/recommend/RecommendUtils$1;-><init>(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method public static animateLoadComplete(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_ICON_HIDE:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/16 v3, 0x14d

    invoke-static {p0, v2, v3, v1}, Lcom/android/common/config/AnimationConstant;->createCurrentAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_APP_ICON_SHOW:Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x1

    const/16 v4, 0x1c2

    invoke-static {p1, v3, v4, v2}, Lcom/android/common/config/AnimationConstant;->createCurrentAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher/folder/recommend/RecommendUtils$5;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/folder/recommend/RecommendUtils$5;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static animateLoadFailed(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)Landroid/animation/AnimatorSet;
    .registers 11

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070864

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sget-object v8, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_MSG_TRANSLATION_Y:Landroid/view/animation/PathInterpolator;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1c2

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/android/common/config/AnimationConstant;->createTranslationAnimator(Landroid/view/View;ZIIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_MSG_SHOW:Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x1

    const/16 v4, 0x1c2

    invoke-static {p1, v3, v4, v2}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_ICON_HIDE:Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x0

    const/16 v4, 0x14d

    invoke-static {p0, v3, v4, v2}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher/folder/recommend/RecommendUtils$2;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher/folder/recommend/RecommendUtils$2;-><init>(Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method public static animateTransY(Landroid/view/View;ILandroid/content/Context;)Landroid/animation/AnimatorSet;
    .registers 10

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07085e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v6, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_4:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x1c2

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/common/config/AnimationConstant;->createTranslationAnimator(Landroid/view/View;ZIIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/folder/recommend/RecommendUtils$3;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/RecommendUtils$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    mul-int/lit8 p1, p1, 0x19

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object p1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    const/4 v3, 0x1

    const/16 v4, 0x1c2

    invoke-static {p0, v3, v4, p1}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v4, Lcom/android/launcher/folder/recommend/RecommendUtils$4;

    invoke-direct {v4, p0}, Lcom/android/launcher/folder/recommend/RecommendUtils$4;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    aput-object p1, p0, v3

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p2
.end method

.method public static decodeFixedBitmap(Ljava/io/FileDescriptor;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const v0, 0x7f07085c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v1, :cond_21

    move v1, v2

    :cond_21
    if-nez p1, :cond_24

    move p1, v2

    :cond_24
    int-to-float v2, v4

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-float v1, v5

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadedApps()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->sDownloadedApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInitRecommendId(Landroid/content/Context;Ljava/lang/CharSequence;)I
    .registers 9

    const/4 v0, -0x1

    if-eqz p0, :cond_bb

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_bb

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1205f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1205ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1205e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1205ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1205eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v6, 0x7f1205e7

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v6, "\u00a0Top Apps"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ba

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5d

    goto :goto_ba

    :cond_5d
    const-string/jumbo v1, "\u00a0Popular Apps"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_b8

    :cond_6d
    const-string/jumbo v1, "\u00a0More Apps"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b6

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7d

    goto :goto_b6

    :cond_7d
    const-string/jumbo v1, "\u00a0Tools"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8d

    goto :goto_b0

    :cond_8d
    const-string/jumbo v1, "\u00a0Suggested Apps"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ae

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9d

    goto :goto_ae

    :cond_9d
    const-string/jumbo v1, "\u00a0Must Play"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_bb

    :cond_ac
    const/4 v0, 0x6

    goto :goto_bb

    :cond_ae
    :goto_ae
    const/4 v0, 0x5

    goto :goto_bb

    :cond_b0
    :goto_b0
    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p0, :cond_bb

    const/4 v0, 0x4

    goto :goto_bb

    :cond_b6
    :goto_b6
    const/4 v0, 0x3

    goto :goto_bb

    :cond_b8
    :goto_b8
    const/4 v0, 0x2

    goto :goto_bb

    :cond_ba
    :goto_ba
    const/4 v0, 0x1

    :cond_bb
    :goto_bb
    return v0
.end method

.method private static hideRecommendLoadingView(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static jumpToDetail(Lcom/android/launcher/folder/recommend/bean/DataBean;Lcom/android/launcher3/Launcher;Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 5

    if-eqz p0, :cond_59

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getJumpUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_59

    :cond_d
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_43

    :cond_1a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/FooterController;->getRecommendId()I

    move-result p2

    const-string v1, "biz_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getJumpUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const p0, 0x13461c1

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_43
    :goto_43
    const-string p0, "jumpToDetail launcher.isPaused():"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecommendUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public static removeDownloadApp([Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "removeDownloadApp: pkgName = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecommendUtils"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_20

    array-length v0, p0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    sget-object v3, Lcom/android/launcher/folder/recommend/RecommendUtils;->sDownloadedApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_20
    return-void
.end method

.method private static showRecommendLoadingView(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
