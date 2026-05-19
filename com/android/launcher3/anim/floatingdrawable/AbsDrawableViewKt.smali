.class public final Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableViewKt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableViewKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final getDrawableView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FLcom/android/launcher3/OplusDeviceProfile;ZLcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZZZLjava/lang/String;)Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v1, p2

    move-object/from16 v5, p4

    move/from16 v2, p5

    move-object/from16 v4, p6

    move-object/from16 v7, p10

    const-string v6, "context"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "drawable"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "deviceProfile"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "bigFolderItemSize"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v6, v3, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    instance-of v8, v3, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    instance-of v9, v3, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;

    sget-object v10, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->Companion:Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;

    invoke-virtual {v10}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;->getInstance()Lcom/oplus/quickstep/utils/AnimationFeatureHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->get1pxEnable()I

    move-result v11

    if-eqz v11, :cond_3c

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v11

    if-nez v11, :cond_3c

    const/4 v11, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v11, 0x0

    :goto_3d
    invoke-static {}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableBlackListKt;->getPKG_ICON_DISABLE()Ljava/util/List;

    move-result-object v13

    invoke-static {v13, v7}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_58

    invoke-virtual {v10}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;->getInstance()Lcom/oplus/quickstep/utils/AnimationFeatureHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->get1pxDisablePkgList()Ljava/util/List;

    move-result-object v13

    invoke-static {v13, v7}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_56

    goto :goto_58

    :cond_56
    const/4 v13, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    const/4 v13, 0x1

    :goto_59
    if-eqz v8, :cond_8a

    if-eqz v11, :cond_88

    invoke-static {}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableBlackListKt;->getCARD_ID_CARD_DISABLE()Ljava/util/List;

    move-result-object v14

    move-object v15, v3

    check-cast v15, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    invoke-virtual {v15}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->getCardType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_88

    invoke-virtual {v10}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;->getInstance()Lcom/oplus/quickstep/utils/AnimationFeatureHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->get1pxDisableCardList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v15}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->getCardType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8a

    :cond_88
    const/4 v10, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v10, 0x0

    :goto_8b
    if-eqz v11, :cond_93

    if-eqz p8, :cond_93

    if-nez v13, :cond_93

    const/4 v12, 0x1

    goto :goto_94

    :cond_93
    const/4 v12, 0x0

    :goto_94
    const-string v13, "getDrawableView dp size is: "

    invoke-static {v13}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const-string v15, ", support1pxEnable: "

    const-string v7, ", iconSupport1px: "

    invoke-static {v13, v14, v15, v11, v7}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isCardDisable1px: "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "AbsDrawableView"

    invoke-static {v11, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_db

    new-instance v8, Lcom/android/launcher3/anim/floatingdrawable/WidgetDrawableView;

    invoke-direct {v8, v0}, Lcom/android/launcher3/anim/floatingdrawable/WidgetDrawableView;-><init>(Landroid/content/Context;)V

    iget v0, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v8, v0, v5, v2, v4}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->initIconSize(ILcom/android/launcher3/OplusDeviceProfile;ZZ)V

    invoke-virtual {v8, v1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setScreenshotBitmap(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/anim/floatingdrawable/WidgetDrawableView;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V

    goto/16 :goto_21e

    :cond_db
    if-nez v2, :cond_103

    if-eqz v8, :cond_103

    if-nez v10, :cond_103

    new-instance v8, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;

    invoke-direct {v8, v0}, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;-><init>(Landroid/content/Context;)V

    iget v0, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v8, v0, v5, v2, v4}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->initIconSize(ILcom/android/launcher3/OplusDeviceProfile;ZZ)V

    invoke-virtual {v8, v1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setScreenshotBitmap(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V

    goto/16 :goto_21e

    :cond_103
    if-nez v2, :cond_12a

    if-eqz v8, :cond_12a

    if-eqz v10, :cond_12a

    new-instance v8, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;

    invoke-direct {v8, v0}, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;-><init>(Landroid/content/Context;)V

    iget v0, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v5, v2, v2}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->initIconSize(ILcom/android/launcher3/OplusDeviceProfile;ZZ)V

    invoke-virtual {v8, v1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setScreenshotBitmap(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V

    goto/16 :goto_21e

    :cond_12a
    if-nez v12, :cond_155

    if-eqz p9, :cond_155

    new-instance v8, Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable;

    invoke-direct {v8, v0}, Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable;-><init>(Landroid/content/Context;)V

    iget v0, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {v8, v0, v5, v6, v1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->initIconSize(ILcom/android/launcher3/OplusDeviceProfile;ZZ)V

    iget v0, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v8, v0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setIconContainerSize(I)V

    invoke-virtual {v8, v2, v4}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setIsBigFolderItem(ZLcom/android/launcher3/anim/floatingdrawable/DrawableSize;)V

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V

    goto/16 :goto_21e

    :cond_155
    const-string v1, "aDrawable.background ?: drawable"

    const-string v7, "aDrawable.foreground ?: drawable"

    if-nez v2, :cond_195

    if-eqz v6, :cond_195

    if-eqz v12, :cond_195

    new-instance v8, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;

    invoke-direct {v8, v0}, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_16f

    move-object v4, v3

    goto :goto_173

    :cond_16f
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    :goto_173
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_17b

    move-object v2, v3

    goto :goto_17f

    :cond_17b
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    :goto_17f
    iget v0, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v5, v1, v1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->initIconSize(ILcom/android/launcher3/OplusDeviceProfile;ZZ)V

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v3, v4

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V

    goto/16 :goto_21e

    :cond_195
    if-nez v2, :cond_1d3

    if-eqz v6, :cond_1d3

    new-instance v8, Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView;

    invoke-direct {v8, v0}, Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1a9

    move-object v4, v3

    goto :goto_1ad

    :cond_1a9
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    :goto_1ad
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1b5

    move-object v2, v3

    goto :goto_1b9

    :cond_1b5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    :goto_1b9
    iget v0, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v5, v1, v1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->initIconSize(ILcom/android/launcher3/OplusDeviceProfile;ZZ)V

    iget v0, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v8, v0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setIconContainerSize(I)V

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v3, v4

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V

    goto :goto_21e

    :cond_1d3
    if-nez v12, :cond_1fd

    if-nez p9, :cond_1fd

    new-instance v8, Lcom/android/launcher3/anim/floatingdrawable/IconScaleDrawable;

    invoke-direct {v8, v0}, Lcom/android/launcher3/anim/floatingdrawable/IconScaleDrawable;-><init>(Landroid/content/Context;)V

    iget v0, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {v8, v0, v5, v6, v1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->initIconSize(ILcom/android/launcher3/OplusDeviceProfile;ZZ)V

    iget v0, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v8, v0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setIconContainerSize(I)V

    invoke-virtual {v8, v2, v4}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setIsBigFolderItem(ZLcom/android/launcher3/anim/floatingdrawable/DrawableSize;)V

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/anim/floatingdrawable/IconScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V

    goto :goto_21e

    :cond_1fd
    new-instance v8, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;

    invoke-direct {v8, v0}, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;-><init>(Landroid/content/Context;)V

    iget v0, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {v8, v0, v5, v1, v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->initIconSize(ILcom/android/launcher3/OplusDeviceProfile;ZZ)V

    invoke-virtual {v8, v2, v4}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setIsBigFolderItem(ZLcom/android/launcher3/anim/floatingdrawable/DrawableSize;)V

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    move-object/from16 v7, p10

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/anim/floatingdrawable/IconDrawableView;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V

    :goto_21e
    return-object v8
.end method

.method public static final getScrollDirection(ILcom/android/launcher3/anim/floatingdrawable/ScrollDirection;)Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;
    .registers 3

    const-string v0, "currentDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gez p0, :cond_a

    sget-object p1, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;->SCROLL_LEFT:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    goto :goto_15

    :cond_a
    if-lez p0, :cond_f

    sget-object p1, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;->SCROLL_RIGHT:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    goto :goto_15

    :cond_f
    sget-object p0, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;->SCROLL_DEFAULT:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    if-eq p1, p0, :cond_14

    goto :goto_15

    :cond_14
    move-object p1, p0

    :goto_15
    return-object p1
.end method

.method public static final isDifferentDirection(Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableViewKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_20

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1b

    goto :goto_25

    :cond_1b
    sget-object p0, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;->SCROLL_LEFT:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    if-ne p1, p0, :cond_25

    goto :goto_24

    :cond_20
    sget-object p0, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;->SCROLL_RIGHT:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    if-ne p1, p0, :cond_25

    :goto_24
    move v0, v1

    :cond_25
    :goto_25
    return v0
.end method
