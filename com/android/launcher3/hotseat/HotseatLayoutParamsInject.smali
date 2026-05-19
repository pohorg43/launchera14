.class public final Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHotseatHeight(I)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p0

    return v0
.end method

.method public static final getHotseatIconVisiblePaddingHor()I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDockerExpandDisabled()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07093d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_1e
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isHotseatPresent()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->dockerCompactArrangement()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->iconSizeLargerThanDefaultSize(I)Z

    move-result v0

    if-eqz v0, :cond_42

    const v0, 0x7f07093a

    goto :goto_45

    :cond_42
    const v0, 0x7f070939

    :goto_45
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_61

    :cond_52
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07093b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_61
    return v0

    :cond_62
    const/4 v0, 0x0

    return v0
.end method

.method public static final getHotseatIconVisiblePaddingVer(I)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isHotseatPresent()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->dockerCompactArrangement()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->iconSizeLargerThanDefaultSize(I)Z

    move-result p0

    if-eqz p0, :cond_16

    const p0, 0x7f07093a

    goto :goto_19

    :cond_16
    const p0, 0x7f070939

    :goto_19
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_35

    :cond_26
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07093c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_35
    return p0

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method public static final injectCellLayoutParamsAnimXTypeCommon(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;II)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_56

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_56

    :cond_23
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    add-int/lit8 p2, p2, 0x1

    sub-int/2addr p2, p1

    mul-int/2addr p2, p0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p0

    mul-int/2addr p0, p1

    add-int/2addr p0, p2

    goto :goto_5d

    :cond_3c
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    mul-int/2addr p0, p2

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p1

    add-int/2addr p1, p0

    sub-int p0, p1, p3

    goto :goto_5e

    :cond_4f
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    goto :goto_5c

    :cond_56
    :goto_56
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    :goto_5c
    mul-int/2addr p0, p2

    :goto_5d
    sub-int/2addr p0, p3

    :goto_5e
    return p0
.end method

.method public static final injectCellLayoutParamsAnimXTypeIn(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;II)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_54

    :cond_23
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    sub-int/2addr p2, p1

    mul-int/2addr p2, p0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p0

    mul-int/2addr p0, p1

    add-int/2addr p0, p2

    goto :goto_59

    :cond_3a
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result p1

    if-eqz p1, :cond_4f

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    mul-int/2addr p0, p2

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p1

    add-int/2addr p1, p0

    add-int p0, p1, p3

    goto :goto_5a

    :cond_4f
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    goto :goto_58

    :cond_54
    :goto_54
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    :goto_58
    mul-int/2addr p0, p2

    :goto_59
    add-int/2addr p0, p3

    :goto_5a
    return p0
.end method

.method public static final injectCellLayoutParamsAnimXTypeOut(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;II)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_54

    :cond_23
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    sub-int/2addr p2, p1

    mul-int/2addr p2, p0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p0

    mul-int/2addr p0, p1

    add-int/2addr p0, p2

    goto :goto_59

    :cond_3a
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result p1

    if-eqz p1, :cond_4f

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    mul-int/2addr p0, p2

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p1

    add-int/2addr p1, p0

    sub-int p0, p1, p3

    goto :goto_5a

    :cond_4f
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    goto :goto_58

    :cond_54
    :goto_54
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    :goto_58
    mul-int/2addr p0, p2

    :goto_59
    sub-int/2addr p0, p3

    :goto_5a
    return p0
.end method

.method public static final injectCellLayoutParamsWillCellX(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellLayoutLayoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v0

    if-gtz v0, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_45

    :cond_37
    iget p1, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p2

    add-int/2addr p2, p1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p1

    sub-int v0, p2, p1

    goto :goto_5c

    :cond_45
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_5c

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerCount()I

    move-result p1

    iget p2, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    div-int/2addr p1, p0

    return p1
.end method

.method public static final injectCellLayoutParamsx(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/CellLayout$LayoutParams;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellLayoutLayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerCount()I

    move-result v0

    iget-boolean v1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeItem:Z

    if-nez v1, :cond_45

    iget-boolean v1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeDivider:Z

    if-eqz v1, :cond_17

    goto :goto_45

    :cond_17
    iget-boolean v1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandItem:Z

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    sub-int/2addr p1, v0

    mul-int/2addr p1, p0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p0

    mul-int/2addr p0, v0

    :goto_28
    add-int/2addr p0, p1

    goto :goto_4c

    :cond_2a
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, p0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p0

    goto :goto_28

    :cond_3e
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    goto :goto_4b

    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    :goto_4b
    mul-int/2addr p0, p1

    :goto_4c
    return p0
.end method

.method public static final injectHotseatTargetWidth(Lcom/android/launcher3/OplusHotseat;I)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    sub-int/2addr p1, v0

    mul-int/2addr p1, p0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    if-lez p0, :cond_1e

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    :cond_1e
    return p0
.end method

.method public static final injectHotseatTargetWidthTypeToIn(Lcom/android/launcher3/OplusHotseat;I)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, p0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    if-lez p0, :cond_20

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    :cond_20
    return p0
.end method

.method public static final injectHotseatTargetWidthTypeToOut(Lcom/android/launcher3/OplusHotseat;I)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, p0

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    if-lez p0, :cond_20

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    :cond_20
    return p0
.end method

.method public static final injectInitCellLayoutParams(ILandroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, -0x65

    if-eq p0, v1, :cond_12

    iput-boolean v0, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    return-void

    :cond_12
    sget-object v2, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v2}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldScreenFoldedFromDisplay()Z

    move-result v2

    if-eqz v2, :cond_1b

    return-void

    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v2, "child.tag"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, p1, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_4e

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_34

    iput-boolean v3, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandItem:Z

    goto :goto_4e

    :cond_34
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iput-boolean v3, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandDivider:Z

    goto :goto_4e

    :cond_3d
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_46

    iput-boolean v3, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeItem:Z

    goto :goto_4e

    :cond_46
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_4e

    iput-boolean v3, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeDivider:Z

    :cond_4e
    :goto_4e
    if-ne p0, v1, :cond_51

    move v0, v3

    :cond_51
    iput-boolean v0, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    return-void
.end method
