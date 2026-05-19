.class public Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
.super Lcom/android/wm/shell/pip/PipBoundsState;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipBoundsState$Orientation;
    }
.end annotation


# static fields
.field public static final ORIENTATION_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_UNDETERMINED:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultGravity:I

.field private mDesiredTvExpandedAspectRatio:F

.field private mIsRtl:Z

.field private final mIsTvExpandedPipSupported:Z

.field private mIsTvPipExpanded:Z

.field private mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

.field private mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

.field private mPreviousCollapsedGravity:I

.field private mTvExpandedSize:Landroid/util/Size;

.field private mTvFixedPipOrientation:I

.field private mTvPipGravity:I

.field private mTvPipManuallyCollapsed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipBoundsState;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V

    sget-object p2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->updateDefaultGravity()V

    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.software.expanded_picture_in_picture"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    return-void
.end method

.method private updateDefaultGravity()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    const/4 v0, 0x3

    const/4 v2, 0x5

    if-eqz v1, :cond_19

    move v3, v0

    goto :goto_1a

    :cond_19
    move v3, v2

    :goto_1a
    or-int/lit8 v3, v3, 0x50

    iput v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    iget-boolean v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsRtl:Z

    if-eq v3, v1, :cond_37

    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    and-int/lit8 v4, v3, 0x7

    and-int/lit8 v3, v3, 0x70

    and-int/lit8 v5, v4, 0x5

    if-ne v5, v2, :cond_30

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    goto :goto_37

    :cond_30
    and-int/2addr v4, v0

    if-ne v4, v0, :cond_37

    or-int/lit8 v0, v3, 0x5

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    :cond_37
    :goto_37
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsRtl:Z

    return-void
.end method


# virtual methods
.method public getDefaultGravity()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    return p0
.end method

.method public getDesiredTvExpandedAspectRatio()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    return p0
.end method

.method public getPipMenuPermanentDecorInsets()Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method public getPipMenuTemporaryDecorInsets()Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method public getTvExpandedSize()Landroid/util/Size;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvExpandedSize:Landroid/util/Size;

    return-object p0
.end method

.method public getTvFixedPipOrientation()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    return p0
.end method

.method public getTvPipGravity()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    return p0
.end method

.method public getTvPipPreviousCollapsedGravity()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    return p0
.end method

.method public isTvExpandedPipSupported()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    return p0
.end method

.method public isTvPipExpanded()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    return p0
.end method

.method public isTvPipManuallyCollapsed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    return p0
.end method

.method public onConfigurationChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->updateDefaultGravity()V

    return-void
.end method

.method public resetTvPipState()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    return-void
.end method

.method public setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V

    if-nez p3, :cond_6

    return-void

    :cond_6
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getExpandedAspectRatioFloat()F

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setDesiredTvExpandedAspectRatio(FZ)V

    return-void
.end method

.method public setDesiredTvExpandedAspectRatio(FZ)V
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    if-nez p2, :cond_1f

    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    if-nez p2, :cond_c

    goto :goto_1f

    :cond_c
    cmpl-float v4, p1, v3

    if-lez v4, :cond_12

    if-eq p2, v0, :cond_1c

    :cond_12
    cmpg-float v0, p1, v3

    if-gtz v0, :cond_18

    if-eq p2, v1, :cond_1c

    :cond_18
    cmpl-float p2, p1, v2

    if-nez p2, :cond_1e

    :cond_1c
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    :cond_1e
    return-void

    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->resetTvPipState()V

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    cmpl-float p2, p1, v2

    if-eqz p2, :cond_31

    cmpl-float p1, p1, v3

    if-lez p1, :cond_2f

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    goto :goto_31

    :cond_2f
    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    :cond_31
    :goto_31
    return-void
.end method

.method public setPipMenuPermanentDecorInsets(Landroid/graphics/Insets;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    return-void
.end method

.method public setPipMenuTemporaryDecorInsets(Landroid/graphics/Insets;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    return-void
.end method

.method public setTvExpandedSize(Landroid/util/Size;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvExpandedSize:Landroid/util/Size;

    return-void
.end method

.method public setTvPipExpanded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    return-void
.end method

.method public setTvPipGravity(I)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    return-void
.end method

.method public setTvPipManuallyCollapsed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    return-void
.end method

.method public setTvPipPreviousCollapsedGravity(I)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    return-void
.end method
