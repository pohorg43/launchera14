.class public final Lcom/android/launcher3/popup/PopupBlurView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/PopupBlurView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/popup/PopupBlurView$Companion;

.field private static final DURATION_ALPHA_ANIM:J = 0x14aL


# instance fields
.field private mDragLayerDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsBlurUnavailable:Z

.field private mScrimColor:I

.field private mWallpaperDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/PopupBlurView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/PopupBlurView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/PopupBlurView;->Companion:Lcom/android/launcher3/popup/PopupBlurView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/popup/PopupBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f060786

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/popup/PopupBlurView;->mScrimColor:I

    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->isBlurUnavailable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/PopupBlurView;->mIsBlurUnavailable:Z

    return-void
.end method

.method public static final getPopBlurView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/launcher3/popup/PopupBlurView;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/popup/PopupBlurView;->Companion:Lcom/android/launcher3/popup/PopupBlurView$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/popup/PopupBlurView$Companion;->getPopBlurView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/launcher3/popup/PopupBlurView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createBlurAnim(Z)Landroid/animation/ObjectAnimator;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    :goto_9
    if-eqz p1, :cond_d

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_d
    sget-object p1, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x14a

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string/jumbo p1, "ofFloat(this, ALPHA, sta…TION_ALPHA_ANIM\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupBlurView;->mIsBlurUnavailable:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupBlurView;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupBlurView;->mDragLayerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1a
    iget p0, p0, Lcom/android/launcher3/popup/PopupBlurView;->mScrimColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1f
    return-void
.end method

.method public final finish(Landroid/view/ViewGroup;)V
    .registers 4

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->disableLongClickIconFlag()V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->runDeferredRemoveCallback()V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->showFolderScrollGuide()V

    return-void
.end method

.method public final setDragLayerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupBlurView;->mDragLayerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final setWallpaperDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupBlurView;->mWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
