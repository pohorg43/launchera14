.class public final Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;
.super Lcom/android/launcher3/folder/PreviewItemManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBigFolderPreviewItemManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BigFolderPreviewItemManager.kt\ncom/android/launcher3/folder/big/BigFolderPreviewItemManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n*L\n1#1,853:1\n1#2:854\n1855#3,2:855\n56#4:857\n*S KotlinDebug\n*F\n+ 1 BigFolderPreviewItemManager.kt\ncom/android/launcher3/folder/big/BigFolderPreviewItemManager\n*L\n311#1:855,2\n323#1:857\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager$Companion;

.field private static final TAG:Ljava/lang/String; = "BigFolderPreviewItemMan"


# instance fields
.field private iconPageWidth:I

.field private mClipBitmap:Landroid/graphics/Bitmap;

.field private mClipRemainder:I

.field private mDotAlpha:F

.field private mDotScale:F

.field private final mDropItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemRectArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftPageParam:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewPage:I

.field private mRightPageParam:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalHeight:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->Companion:Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    new-instance p1, Landroid/util/SparseArray;

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_AND_STACKED()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mItemRectArray:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    const/high16 p1, 0x437f0000  # 255.0f

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotAlpha:F

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotScale:F

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getBfPreviewItemDrawingParams$lambda$10$lambda$9(Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final checkCurrentPreviewItems()V
    .registers 9

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    const-string v1, "BigFolderPreviewItemMan"

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    const-string p0, "current items is empty!!!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_20
    const/4 v5, 0x1

    if-ge v4, v3, :cond_47

    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    if-eqz v6, :cond_44

    iget-object v6, v6, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    move v2, v5

    goto :goto_47

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_47
    :goto_47
    if-eqz v2, :cond_56

    const-string v0, "current preview items is error, we should to rebuild!!!"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recreateCurrentPage()V

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_56
    return-void
.end method

.method private final computePreviewDrawingParamsColor(II)V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_AND_STACKED()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_2d

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_AND_STACKED()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2d

    move v1, v4

    goto :goto_2e

    :cond_2d
    move v1, v5

    :goto_2e
    iget-boolean v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mForceRecompute:Z

    if-nez v2, :cond_4a

    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3b

    move v2, v4

    goto :goto_3c

    :cond_3b
    move v2, v5

    :goto_3c
    if-eqz v2, :cond_4a

    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    if-ne v2, p1, :cond_4a

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mTotalHeight:I

    if-eq v2, p2, :cond_47

    goto :goto_4a

    :cond_47
    move p1, v5

    goto/16 :goto_c8

    :cond_4a
    :goto_4a
    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    iput p2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mTotalHeight:I

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string p2, "mIcon.context"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v8, v2, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const-string v2, "mIcon.mActivity"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string v2, "mIcon"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v10, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v11

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v12

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/folder/big/BigFolderBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;III)V

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeY()I

    move-result v9

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeY()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float v10, p1

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v11

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->init(Landroid/content/Context;IIFZ)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->initClipBitmap()V

    move p1, v4

    :goto_c8
    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p2, p2, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p2, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_ef

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    if-eqz p2, :cond_ed

    goto :goto_ee

    :cond_ed
    move v4, v5

    :goto_ee
    move v5, v4

    :cond_ef
    if-eqz v5, :cond_f5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updatePreviewItemDrawingParams()V

    goto :goto_fc

    :cond_f5
    if-nez p1, :cond_f9

    if-eqz v1, :cond_fc

    :cond_f9
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recreateCurrentPage()V

    :cond_fc
    :goto_fc
    return-void
.end method

.method private final drawParamsWithAlpha(Landroid/graphics/Canvas;Ljava/util/ArrayList;IZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;IZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 v0, -0x1

    if-ne p3, v0, :cond_e

    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getIconPageWidth()I

    move-result v2

    mul-int/2addr v2, p3

    int-to-float p3, v2

    sub-float/2addr v1, p3

    iget-object p3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p3

    if-eqz p3, :cond_28

    neg-float v1, v1

    :cond_28
    const/4 p3, 0x1

    if-eqz p4, :cond_39

    iget-object p4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p4, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p4

    if-nez p4, :cond_37

    move p4, p3

    goto :goto_41

    :cond_37
    const/4 p4, 0x0

    goto :goto_41

    :cond_39
    iget-object p4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p4, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p4

    :goto_41
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLeftPage()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getRightPage()I

    move-result v3

    if-ne v2, v3, :cond_55

    if-eqz p4, :cond_92

    :cond_55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p4

    neg-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v0

    if-ltz v4, :cond_8c

    :goto_65
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "params[i]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-boolean v5, v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    if-nez v5, :cond_87

    int-to-float v5, p3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getIconPageWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-direct {p0, p1, v4, v5}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->drawPreviewItemWithAlpha(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;F)V

    :cond_87
    if-gez v0, :cond_8a

    goto :goto_8c

    :cond_8a
    move v4, v0

    goto :goto_65

    :cond_8c
    :goto_8c
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_92
    return-void
.end method

.method private final drawPreviewItemWithAlpha(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;F)V
    .registers 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    int-to-float v3, v2

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getFolderIconAlpha()F

    move-result v4

    mul-float/2addr v4, v3

    mul-float/2addr v4, p3

    float-to-int p3, v4

    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setItemAlphaDiff(Landroid/graphics/drawable/Drawable;I)V

    iget p3, v1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    neg-float p3, p3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    neg-float v3, v3

    invoke-virtual {p1, p3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget p3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p3, v3

    iget v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-virtual {p1, p3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setItemAlphaDiff(Landroid/graphics/drawable/Drawable;I)V

    :cond_52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p3, p3, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p3, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_71

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/android/launcher/Launcher;

    instance-of v0, p2, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    if-nez v0, :cond_71

    iget-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p3, v0}, Lcom/android/launcher/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p3

    iput-object p3, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    :cond_71
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->drawDotIfNecessary(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    return-void
.end method

.method private final getBfPreviewItemDrawingParams(Ljava/util/ArrayList;Z)Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;Z)",
            "Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x0

    if-eqz p2, :cond_58

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v1

    if-eqz p2, :cond_2b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    if-eqz p2, :cond_2b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.folder.big.stacked.BFPreviewItemDrawingParams"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    goto :goto_58

    :cond_2b
    new-instance p1, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;-><init>(FFF)V

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, p2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_3a

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    :cond_3a
    if-eqz v3, :cond_40

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling()Z

    move-result v2

    :cond_40
    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v1

    if-eqz p2, :cond_57

    if-nez v2, :cond_57

    iput-boolean v1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mNeedAlphaAnim:Z

    iget-object p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/keyguardservice/b;

    invoke-direct {v0, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_57
    move-object v3, p1

    :cond_58
    :goto_58
    return-object v3
.end method

.method private static final getBfPreviewItemDrawingParams$lambda$10$lambda$9(Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_d
    return-void
.end method

.method private final getInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method private final initClipBitmap()V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMSpacingConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMTextViewHeight()I

    move-result v1

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_e8

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_e8

    if-lez v1, :cond_e8

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/android/common/util/IconUtils;->getBigFolderOrCardRadius(Landroid/content/Context;F)F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mClipRemainder:I

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v4, v4, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v5, v4, Lcom/android/launcher/Launcher;

    const/4 v6, 0x1

    if-eqz v5, :cond_77

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher/Launcher;

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-virtual {v4}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    if-eqz v4, :cond_77

    move v4, v6

    goto :goto_78

    :cond_77
    move v4, v2

    :goto_78
    iget-object v5, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mClipBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_95

    if-eqz v5, :cond_90

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v7, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mClipRemainder:I

    add-int/2addr v7, v8

    if-ne v5, v7, :cond_90

    goto :goto_91

    :cond_90
    move v6, v2

    :goto_91
    if-nez v6, :cond_b1

    if-nez v4, :cond_b1

    :cond_95
    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mClipRemainder:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mClipBitmap:Landroid/graphics/Bitmap;

    :cond_b1
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mClipBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_e8

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mClipRemainder:I

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {v5, p0, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object p0

    invoke-virtual {p0, v5, v3}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {v4, p0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_e8
    return-void
.end method

.method private final initParams(ILjava/util/ArrayList;Ljava/util/List;Ljava/util/List;Z)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p5

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v10, :cond_11

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_16

    :cond_11
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v0

    :goto_16
    move v13, v0

    const/4 v0, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v15, v0

    :goto_1d
    if-ge v15, v14, :cond_bf

    move-object/from16 v8, p2

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "params[i]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    rem-int v0, v15, v0

    if-nez v0, :cond_47

    instance-of v0, v7, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    if-eqz v0, :cond_47

    move-object v0, v7

    check-cast v0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    move-object/from16 v6, p4

    invoke-direct {v9, v0, v6}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setStackedDrawable(Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;Ljava/util/List;)V

    move-object/from16 v5, p3

    goto :goto_75

    :cond_47
    move-object/from16 v6, p4

    move-object/from16 v5, p3

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v9, v7, v0, v11}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    iget-object v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_75

    iget-boolean v1, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    iget-object v2, v9, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    if-eqz v1, :cond_75

    if-nez v0, :cond_75

    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v1, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v1, :cond_6f

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    goto :goto_70

    :cond_6f
    const/4 v0, 0x0

    :goto_70
    if-eqz v0, :cond_75

    invoke-virtual {v0, v7}, Lcom/android/launcher3/folder/big/BigFolderIcon;->playSingleItemDotAnimation(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    :cond_75
    :goto_75
    if-nez v11, :cond_8a

    iget-object v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->cancel()V

    :cond_7e
    invoke-virtual {v9, v15, v13, v7, v10}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;I)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b9

    iget-object v0, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, v9, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_b9

    :cond_8a
    new-instance v4, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    const/16 v16, 0x230

    const/16 v17, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v15

    move-object/from16 v18, v4

    move v4, v12

    move v5, v15

    move v6, v13

    move-object v9, v7

    move/from16 v7, v16

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    move-object/from16 v1, v18

    if-eqz v0, :cond_b4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->hasEqualFinalState(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Z

    move-result v0

    if-eqz v0, :cond_af

    goto :goto_b9

    :cond_af
    iget-object v0, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->cancel()V

    :cond_b4
    iput-object v1, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    :cond_b9
    :goto_b9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p0

    goto/16 :goto_1d

    :cond_bf
    return-void
.end method

.method private final setItemAlphaDiff(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    instance-of p0, p1, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    if-eqz p0, :cond_22

    check-cast p1, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getController()Lcom/oplus/fancyicon/BaseRendererController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_14

    :cond_11
    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->setRootAlpha(I)V

    :goto_14
    invoke-virtual {p1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getController()Lcom/oplus/fancyicon/BaseRendererController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    goto :goto_25

    :cond_22
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_25
    :goto_25
    return-void
.end method

.method private final setStackedDrawable(Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v1, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v1, :cond_7

    return-void

    :cond_7
    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getConvertAnimBuilder()Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->isConvertAnimating()Z

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iput-boolean v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->skipGetDrawable:Z

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a1

    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_32
    const/4 v4, 0x0

    if-ge v3, v2, :cond_75

    new-instance v5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {v5, v4, v4, v4}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v5, v4, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    iget-object v4, v5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v4, :cond_4f

    iget-object v6, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    :cond_4f
    invoke-virtual {p0, v3, v5}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->computeStackedPreviewItemDrawingParams(ILcom/android/launcher3/folder/PreviewItemDrawingParams;)Z

    move-result v4

    iget-object v6, v5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v7, v6, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    if-eqz v7, :cond_64

    invoke-static {v6}, Lcom/android/launcher3/icons/FastBitmapUtils;->newIconFromFancyDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    invoke-virtual {v6, v1, v1, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_64
    if-nez v4, :cond_6f

    const-string p0, "BigFolderPreviewItemMan"

    const-string/jumbo p1, "setStackedDrawable: LayoutRule not init!!!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6f
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_75
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_7f
    const/4 v2, 0x4

    if-ge p2, v2, :cond_90

    new-instance v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {v2, v4, v4, v4}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    invoke-virtual {p0, p2, v2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->computeStackedPreviewItemDrawingParams(ILcom/android/launcher3/folder/PreviewItemDrawingParams;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_7f

    :cond_90
    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->setCurrentStackedParams(Ljava/util/List;)V

    new-instance p2, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2, v0, v2}, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;-><init>(Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;Lcom/android/launcher3/icons/BitmapInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    invoke-virtual {p2, v1, v1, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_a1
    return-void
.end method

.method private final updatePageParamsDrawable(Ljava/util/ArrayList;Ljava/util/function/Predicate;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    instance-of v3, v2, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    if-eqz v3, :cond_3b

    check-cast v2, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->getCurrentStackedParams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v4, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v1, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v3, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move v1, v0

    goto :goto_6

    :cond_3b
    iget-object v3, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object p1, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v2, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_4a

    :cond_49
    move v0, v1

    :goto_4a
    return v0
.end method


# virtual methods
.method public final addDropItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "addDropItem: item = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_17

    const-string v1, ""

    :cond_17
    const-string v2, "BigFolderPreviewItemMan"

    invoke-static {v0, v1, v2}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final assembleDotParams(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Landroid/graphics/Rect;)Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    .registers 6

    const-string/jumbo v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    new-instance v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {v1}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object p2, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMSizeConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMIsRTL()Z

    move-result p2

    if-ne p2, v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    iput-boolean v0, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, p2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_39

    check-cast p2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    goto :goto_3a

    :cond_39
    const/4 p2, 0x0

    :goto_3a
    if-eqz p2, :cond_46

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getDotAnim()Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p2, :cond_46

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    :cond_46
    if-eqz v2, :cond_4b

    iget p2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotAlpha:F

    goto :goto_4d

    :cond_4b
    iget p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mSingeDotAlpha:F

    :goto_4d
    iput p2, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    if-eqz v2, :cond_54

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotScale:F

    goto :goto_56

    :cond_54
    iget p0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mSingeDotScale:F

    :goto_56
    iput p0, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    return-object v1
.end method

.method public buildParamsForPage(ILjava/util/ArrayList;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;Z)V"
        }
    .end annotation

    const-string/jumbo v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_f

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->getFolderInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v3, "mIcon.folderInfo.contents"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getStackedItems(ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getBfPreviewItemDrawingParams(Ljava/util/ArrayList;Z)Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    move-result-object v1

    :goto_49
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_49

    :cond_5d
    :goto_5d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v2, v3, :cond_71

    new-instance v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_71
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_af

    if-eqz v1, :cond_af

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v3

    if-ne v2, v3, :cond_af

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput-object v2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->setMStackedRealSize(F)V

    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->setMStackedWidth(I)V

    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->setMStackedHeight(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_af
    const-string v1, "items"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move v2, p1

    move-object v3, v0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->initParams(ILjava/util/ArrayList;Ljava/util/List;Ljava/util/List;Z)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_fa

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fa

    const-string p1, "buildParamsForPage: mIntrinsicIconSize = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mItemRectArray = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mItemRectArray:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", caller = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x5

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BigFolderPreviewItemMan"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fa
    return-void
.end method

.method public computePreviewDrawingParams(II)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewDrawingParamsColor(I)V

    return-void
.end method

.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;I)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;I)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object p2

    if-nez p4, :cond_67

    iget p3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    const/4 p4, 0x0

    cmpl-float p3, p3, p4

    if-lez p3, :cond_67

    iget-object p3, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mItemRectArray:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/RectF;

    if-nez p3, :cond_1c

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    :cond_1c
    invoke-virtual {p3}, Landroid/graphics/RectF;->setEmpty()V

    iget-object p4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p4}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p4

    iget p4, p4, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float p4, p4

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    add-float/2addr p4, v0

    iput p4, p3, Landroid/graphics/RectF;->left:F

    iget-object p4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p4}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p4

    iget p4, p4, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float p4, p4

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    add-float/2addr p4, v0

    iput p4, p3, Landroid/graphics/RectF;->top:F

    iget-object p4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p4, p4, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {p4}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result p4

    iget v0, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p4

    iput v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p4

    iput v1, p3, Landroid/graphics/RectF;->top:F

    iget p4, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    iget v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    mul-float v3, p4, v2

    add-float/2addr v3, v0

    iput v3, p3, Landroid/graphics/RectF;->right:F

    mul-float/2addr p4, v2

    add-float/2addr p4, v1

    iput p4, p3, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mItemRectArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_67
    const-string/jumbo p0, "para"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final computeStackedPreviewItemDrawingParams(ILcom/android/launcher3/folder/PreviewItemDrawingParams;)Z
    .registers 9

    const-string/jumbo v0, "p"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40800000  # 4.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    div-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    rem-int/2addr p1, v3

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    const/4 v4, 0x1

    invoke-static {v3, p1, v4, p0}, Lcom/android/launcher/CellLayoutHelper;->invertCellX(IIIZ)I

    move-result p0

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMStackedBaselineSubIconRealSize()F

    move-result p1

    const/4 v5, 0x0

    cmpg-float p1, p1, v5

    const/4 v5, 0x0

    if-nez p1, :cond_46

    move p1, v4

    goto :goto_47

    :cond_46
    move p1, v5

    :goto_47
    if-eqz p1, :cond_4a

    return v5

    :cond_4a
    int-to-float p0, p0

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMStackedBaselineSubIconRealSize()F

    move-result p1

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMStackedPreviewSubIconGap()F

    move-result v5

    mul-float/2addr v5, v3

    add-float/2addr v5, p1

    mul-float/2addr v5, p0

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMStackedPreviewSubIconGap()F

    move-result p0

    add-float/2addr p0, v5

    add-float/2addr p0, v0

    int-to-float p1, v2

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMStackedBaselineSubIconRealSize()F

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMStackedPreviewSubIconGap()F

    move-result v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    mul-float/2addr v5, p1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMStackedPreviewSubIconGap()F

    move-result p1

    add-float/2addr p1, v5

    add-float/2addr p1, v0

    const-string v2, "computeStackedPreviewItemDrawingParams: transX = "

    const-string v3, ", transY = "

    const-string v5, ", size = "

    invoke-static {v2, p0, v3, p1, v5}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMStackedBaselineSubIconRealSize()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", remainder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BigFolderPreviewItemMan"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMStackedBaselineSubIconScale()F

    move-result v0

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    return v4
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->draw(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)V
    .registers 10

    const-string p2, "canvas"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result p2

    if-nez p2, :cond_12

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;Ljava/lang/Boolean;)V

    :cond_12
    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {p2}, Lcom/android/launcher3/folder/IFolderExt;->isAnimating()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-static {}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isLightOrSuperLightFolderAnim()Z

    move-result p2

    if-nez p2, :cond_27

    return-void

    :cond_27
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float v3, p2

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float v4, p2

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p2

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    iget v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v1, v1

    iget v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result v1

    neg-float v2, v1

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLeftPage()I

    move-result v6

    invoke-direct {p0, p1, v2, v6, v4}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->drawParamsWithAlpha(Landroid/graphics/Canvas;Ljava/util/ArrayList;IZ)V

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getRightPage()I

    move-result v6

    invoke-direct {p0, p1, v2, v6, v3}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->drawParamsWithAlpha(Landroid/graphics/Canvas;Ljava/util/ArrayList;IZ)V

    goto :goto_a1

    :cond_9a
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v2, v5, v6}, Lcom/android/launcher3/folder/PreviewItemManager;->drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;FLjava/lang/Boolean;)V

    :goto_a1
    iget v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    neg-float v2, v2

    iget v6, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v6, v6

    neg-float v6, v6

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBgScale()F

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v2

    if-nez v0, :cond_c9

    move v3, v4

    :cond_c9
    if-nez v3, :cond_ce

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->initClipBitmap()V

    :cond_ce
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mClipBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_dc

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mClipRemainder:I

    neg-int p0, p0

    int-to-float p0, p0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr p0, v2

    invoke-virtual {p1, v0, p0, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_dc
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final drawDotIfNecessary(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V
    .registers 13

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v1, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    goto :goto_16

    :cond_15
    move-object v0, v2

    :goto_16
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getConvertAnimBuilder()Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->isConvertAnimating()Z

    move-result v0

    if-ne v0, v1, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    move v0, v3

    :goto_29
    iput-boolean v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mForceHideDot:Z

    if-nez v0, :cond_ed

    iget-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    if-eqz v0, :cond_ed

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v4, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result v0

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v5, v5, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMSizeConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object v4

    if-eqz v4, :cond_5f

    invoke-virtual {v4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMDotRendererBigFolder()Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;

    move-result-object v4

    goto :goto_60

    :cond_5f
    move-object v4, v2

    :goto_60
    instance-of v6, v4, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;

    if-eqz v6, :cond_65

    move-object v2, v4

    :cond_65
    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v4

    sub-float/2addr v4, v0

    neg-float v4, v4

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v6

    sub-float/2addr v6, v0

    neg-float v0, v6

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    iget v8, v5, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, v5, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget v6, v5, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    const/4 v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v8

    mul-float/2addr v8, v7

    add-float/2addr v8, v6

    float-to-int v6, v8

    iget v8, v5, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v5

    mul-float/2addr v5, v7

    add-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v3, v3, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->assembleDotParams(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Landroid/graphics/Rect;)Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v0

    iget-object v5, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    if-eqz v5, :cond_ea

    invoke-virtual {v5}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    iget-object v5, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/dot/DotInfo;->canShowDot()Z

    move-result v5

    if-eqz v5, :cond_cf

    if-eqz v2, :cond_ea

    invoke-virtual {v2, p1, v0, v4}, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;Landroid/graphics/Rect;)V

    goto :goto_ea

    :cond_cf
    iget-object v5, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v5

    if-ne v5, v1, :cond_ea

    iget-object v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getNumberCount()I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->isHideDot(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)Z

    move-result p0

    if-eqz p0, :cond_e4

    goto :goto_e5

    :cond_e4
    move v3, v1

    :goto_e5
    if-eqz v2, :cond_ea

    invoke-virtual {v2, p1, v3, v0, v4}, Lcom/android/launcher3/folder/big/BigFolderNumBadgeRender;->drawNumberForBigFolderItem(Landroid/graphics/Canvas;ILcom/android/launcher3/icons/DotRenderer$DrawParams;Landroid/graphics/Rect;)V

    :cond_ea
    :goto_ea
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_ed
    return-void
.end method

.method public bridge synthetic drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Ljava/lang/Boolean;)V
    .registers 4

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Z)V

    return-void
.end method

.method public drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Z)V
    .registers 6

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    iget-boolean v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mNeedAlphaAnim:Z

    if-ne v1, p3, :cond_9

    goto :goto_a

    :cond_9
    move p3, v0

    :goto_a
    if-eqz p3, :cond_13

    iget-object p3, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mNeedAlphaAnim:Z

    :cond_13
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Ljava/lang/Boolean;)V

    iget-object p3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p3, p3, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p3, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_37

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/android/launcher/Launcher;

    instance-of v0, p2, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    if-nez v0, :cond_37

    if-nez p2, :cond_2f

    goto :goto_37

    :cond_2f
    iget-object v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p3, v0}, Lcom/android/launcher/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p3

    iput-object p3, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->dotInfo:Lcom/android/launcher3/dot/DotInfo;

    :cond_37
    :goto_37
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->drawDotIfNecessary(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    return-void
.end method

.method public forceRecomputePreviewDrawingParams()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mForceRecompute:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recomputePreviewDrawingParams()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mForceRecompute:Z

    return-void
.end method

.method public final getCurrentPreviewParams()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    const-string v0, "mCurrentPageParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDropItem()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    return-object p0
.end method

.method public final getIconPageWidth()I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result p0

    return p0
.end method

.method public final getMClipBitmap()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mClipBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getMDotAlpha()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotAlpha:F

    return p0
.end method

.method public final getMDotScale()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotScale:F

    return p0
.end method

.method public final getMItemRectArray()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mItemRectArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final getMLeftPageParam()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getMPreviewPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    return p0
.end method

.method public final getMRightPageParam()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final hidePreviewItem(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1b

    return-void

    :cond_1b
    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v1

    div-int/2addr p1, v1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v1

    div-int v1, p2, v1

    if-eq p1, v1, :cond_2b

    return-void

    :cond_2b
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result p1

    rem-int/2addr p2, p1

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_41

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    goto :goto_42

    :cond_41
    const/4 p0, 0x0

    :goto_42
    if-eqz p0, :cond_47

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    :cond_47
    return-void
.end method

.method public hidePreviewItem(IZ)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-ltz p1, :cond_8e

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1e

    goto/16 :goto_8e

    :cond_1e
    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_37

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    goto :goto_38

    :cond_37
    move-object v0, v1

    :goto_38
    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5b

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v3, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    goto :goto_5c

    :cond_5b
    move-object v2, v1

    :goto_5c
    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_7f

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    iget-object v4, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v4, v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    :cond_7f
    if-nez v0, :cond_82

    goto :goto_84

    :cond_82
    iput-boolean p2, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    :goto_84
    if-nez v2, :cond_87

    goto :goto_89

    :cond_87
    iput-boolean p2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    :goto_89
    if-nez v1, :cond_8c

    goto :goto_8e

    :cond_8c
    iput-boolean p2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    :cond_8e
    :goto_8e
    return-void
.end method

.method public hidePreviewItems(IIZ)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-gt p1, p2, :cond_5a

    move v0, p1

    :goto_d
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1e

    goto :goto_5a

    :cond_1e
    sget-object v1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v2

    div-int v2, p1, v2

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v3

    div-int v3, v0, v3

    if-eq v2, v3, :cond_2f

    return-void

    :cond_2f
    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v1

    rem-int v1, v0, v1

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    goto :goto_47

    :cond_46
    const/4 v1, 0x0

    :goto_47
    if-eqz v1, :cond_55

    iput-boolean p3, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_55

    iget-object v1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_55

    iput-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    :cond_55
    if-eq v0, p2, :cond_5a

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_5a
    :goto_5a
    return-void
.end method

.method public final isHideDot(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)Z
    .registers 3

    const-string/jumbo v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2c

    instance-of v0, p1, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    if-nez v0, :cond_2c

    iget-object v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_2c

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusAppFilter;->isHideDot(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method public onFolderClose(I)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    const-string/jumbo v0, "onFolderClose: mPreviewPage = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigFolderPreviewItemMan"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4d

    const-string/jumbo v0, "onFolderClose: mDropItems.size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4d
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v3, "mIcon"

    const/4 v4, 0x0

    if-eqz p1, :cond_a2

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v5, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->setDoClosingAnim(Z)V

    iget-object v6, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v6, v4}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    iget-object v6, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v6, v4}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v7, "mIcon.info.contents"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p1, v6}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getPreviewPageForClose(ILjava/util/List;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setMPreviewPage(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget v3, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v5, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    invoke-static {p1, v3, v4, v1, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance$default(Lcom/android/launcher3/folder/big/BigFolderIcon;FZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p1

    invoke-virtual {p1, v4, v2}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(IZ)V

    goto :goto_e1

    :cond_a2
    iget v5, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    if-eq v5, p1, :cond_e1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setMPreviewPage(I)V

    invoke-static {}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isSuperLightFolderAnim()Z

    move-result v5

    if-eqz v5, :cond_bd

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(IZ)V

    goto :goto_d4

    :cond_bd
    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget v3, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v5, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance$default(Lcom/android/launcher3/folder/big/BigFolderIcon;FZILjava/lang/Object;)V

    :goto_d4
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    const-string v1, "mCurrentPageParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewItemManager;->onParamsChanged()V

    :cond_e1
    :goto_e1
    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    if-nez p1, :cond_e8

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->checkCurrentPreviewItems()V

    :cond_e8
    return-void
.end method

.method public recomputePreviewDrawingParams()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->computePreviewDrawingParamsColor(II)V

    :cond_17
    return-void
.end method

.method public final recreateCurrentPage()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    const-string v2, "mCurrentPageParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public final removeDropItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "removeDropItem: item = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_18

    const-string v1, ""

    :cond_18
    const-string v2, "BigFolderPreviewItemMan"

    invoke-static {v0, v1, v2}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_1d
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_1b

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getConvertAnimBuilder()Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->isConvertAnimating()Z

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->skipGetDrawable:Z

    :goto_1b
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public final setIconPageWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->iconPageWidth:I

    return-void
.end method

.method public final setMClipBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mClipBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setMDotAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotAlpha:F

    return-void
.end method

.method public final setMDotScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDotScale:F

    return-void
.end method

.method public final setMItemRectArray(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mItemRectArray:Landroid/util/SparseArray;

    return-void
.end method

.method public final setMLeftPageParam(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMPreviewPage(I)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "setMPreviewPage value = "

    const-string v1, ", caller = "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "BigFolderPreviewItemMan"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_15
    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    return-void
.end method

.method public final setMRightPageParam(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    return-void
.end method

.method public final showPreviewItems(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->removeDropItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :cond_c
    if-eqz p2, :cond_48

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mDropItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recreateCurrentPage()V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLeftPage()I

    move-result p1

    if-lez p1, :cond_2b

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLeftPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updateLeftPageParams(I)V

    :cond_2b
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getRightPage()I

    move-result p1

    if-lez p1, :cond_40

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getRightPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updateRightPageParams(I)V

    :cond_40
    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapToOriginalPage(Z)V

    :cond_48
    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final updateLeftPageParams(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public final updatePreviewItemDrawingParams()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_58

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.folder.big.stacked.BFPreviewItemDrawingParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->getCurrentStackedParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :cond_3d
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v4, v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3d

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_50
    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW_NOT_STACKED()I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_5e

    :cond_58
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5e
    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v4, v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v4, :cond_67

    check-cast v3, Lcom/android/launcher3/folder/big/BigFolderIcon;

    goto :goto_68

    :cond_67
    const/4 v3, 0x0

    :goto_68
    if-eqz v3, :cond_8c

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v3

    if-eqz v3, :cond_8c

    iget v4, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v5, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v6, "mIcon.info.contents"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getCurrentPreviewAndStackedItems(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_8c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_8d

    :cond_8c
    move v3, v2

    :goto_8d
    if-ne v0, v3, :cond_9b

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mItemRectArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_98

    goto :goto_99

    :cond_98
    move v1, v2

    :goto_99
    if-eqz v1, :cond_9e

    :cond_9b
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updatePreviewItems(Z)V

    :cond_9e
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_a4
    if-ge v2, v1, :cond_b6

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v4, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;I)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    :cond_b6
    return-void
.end method

.method public updatePreviewItems(Ljava/util/function/Predicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    const-string v1, "mFirstPageParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updatePageParamsDrawable(Ljava/util/ArrayList;Ljava/util/function/Predicate;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    const-string v2, "mCurrentPageParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updatePageParamsDrawable(Ljava/util/ArrayList;Ljava/util/function/Predicate;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_22

    if-eqz v0, :cond_20

    goto :goto_22

    :cond_20
    move v0, v2

    goto :goto_23

    :cond_22
    :goto_22
    move v0, v3

    :goto_23
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updatePageParamsDrawable(Ljava/util/ArrayList;Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_30

    if-eqz v0, :cond_2e

    goto :goto_30

    :cond_2e
    move v0, v2

    goto :goto_31

    :cond_30
    :goto_30
    move v0, v3

    :goto_31
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updatePageParamsDrawable(Ljava/util/ArrayList;Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_3b

    if-eqz v0, :cond_3c

    :cond_3b
    move v2, v3

    :cond_3c
    if-eqz v2, :cond_43

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_43
    return-void
.end method

.method public updatePreviewItems(Z)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mPreviewPage:I

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    const-string v2, "mCurrentPageParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public final updateRightPageParams(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public final updateSinglePageParam(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 8

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mLeftPageParam:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string/jumbo v1, "mLeftPageParam.iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "BigFolderPreviewItemMan"

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "i.next()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v3, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_14

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string/jumbo v0, "updateSinglePageParam: left item = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0, v3, v2}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_43
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->mRightPageParam:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string/jumbo v0, "mRightPageParam.iterator()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "j.next()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_4f

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string/jumbo p0, "updateSinglePageParam: right item = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p0, p2, v2}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_7c
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 6

    const-string/jumbo v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_21

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mCurrentPageParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v3, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne v3, p1, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_21
    return v1
.end method
