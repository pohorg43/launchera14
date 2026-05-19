.class public final Lcom/android/launcher3/hotseat/HotseatDragController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHotseatDragController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HotseatDragController.kt\ncom/android/launcher3/hotseat/HotseatDragController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,336:1\n1#2:337\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseat/HotseatDragController;

.field private static final TAG:Ljava/lang/String; = "HotseatDragController"

.field private static dragFromHotseatToUnNormalAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

.field private static isDragAbnormalItem:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/HotseatDragController;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/HotseatDragController;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/HotseatDragController;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDragController;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final abnormalAreaShouldNotAcceptDropAndToast(Lcom/android/launcher3/DropTarget$DragObject;FLcom/android/launcher3/CellLayout;)Z
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "dragObject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_14

    return v1

    :cond_14
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1f

    return v1

    :cond_1f
    const/4 v2, 0x0

    sput-object v2, Lcom/android/launcher3/hotseat/HotseatDragController;->dragFromHotseatToUnNormalAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v2, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setAddedDividerForDragInFlag(Z)V

    if-eqz p2, :cond_b2

    instance-of p2, p2, Lcom/android/launcher3/OplusHotseat;

    if-eqz p2, :cond_b2

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/launcher3/OplusHotseat;->getDragViewVisualCenterX(Lcom/android/launcher3/DropTarget$DragObject;)F

    move-result p2

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    const/4 v3, 0x1

    if-nez v2, :cond_3d

    move v2, v3

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    if-eqz v2, :cond_41

    move p2, p1

    :cond_41
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDragController;->getExpandAreaStartPositionX(Lcom/android/launcher3/OplusHotseat;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "abnormalAreaShouldNotAcceptDropAndToast,realDragViewVisualCenter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",dragViewVisualCenter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "Hotseat_expand"

    const-string v5, "HotseatDragController"

    invoke-static {v4, v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120613

    const/16 v6, -0x65

    if-lez v2, :cond_87

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_87

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne p2, v6, :cond_7d

    sput-object p0, Lcom/android/launcher3/hotseat/HotseatDragController;->dragFromHotseatToUnNormalAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    :cond_7d
    invoke-static {v0, p1}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    const-string/jumbo p0, "not support drag to expand area!"

    invoke-static {v4, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_87
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v2

    if-nez v2, :cond_95

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result v2

    if-nez v2, :cond_b2

    :cond_95
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDragController;->getSubscribeAreaEndPositionX()I

    move-result v2

    if-lez v2, :cond_b2

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_b2

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne p2, v6, :cond_a8

    sput-object p0, Lcom/android/launcher3/hotseat/HotseatDragController;->dragFromHotseatToUnNormalAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    :cond_a8
    invoke-static {v0, p1}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    const-string/jumbo p0, "not support drag to subscribe area!"

    invoke-static {v4, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_b2
    return v1
.end method

.method public static final abnormalAreaShouldNotReorderAlarm(FLcom/android/launcher3/CellLayout;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    if-eqz p1, :cond_59

    instance-of p1, p1, Lcom/android/launcher3/OplusHotseat;

    if-eqz p1, :cond_59

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatDragController;->getExpandAreaStartPositionX(Lcom/android/launcher3/OplusHotseat;)I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_38

    sget-object v2, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerWidth()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_38

    return v0

    :cond_38
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p1

    if-nez p1, :cond_46

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result p1

    if-nez p1, :cond_59

    :cond_46
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDragController;->getSubscribeAreaEndPositionX()I

    move-result p1

    if-lez p1, :cond_59

    sget-object v2, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerWidth()I

    move-result v2

    add-int/2addr v2, p1

    int-to-float p1, v2

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_59

    return v0

    :cond_59
    return v1
.end method

.method public static final abnormalItemShouldNotDragOutAndToast(Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-nez v0, :cond_1e

    return v1

    :cond_1e
    if-eqz p0, :cond_50

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-eq v2, v3, :cond_27

    goto :goto_50

    :cond_27
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    if-eqz p1, :cond_36

    const p0, 0x7f1202dc

    invoke-static {v0, p0}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_36
    sput-boolean v3, Lcom/android/launcher3/hotseat/HotseatDragController;->isDragAbnormalItem:Z

    goto :goto_41

    :cond_39
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_43

    sput-boolean v3, Lcom/android/launcher3/hotseat/HotseatDragController;->isDragAbnormalItem:Z

    :goto_41
    move v1, v3

    goto :goto_50

    :cond_43
    sput-boolean v1, Lcom/android/launcher3/hotseat/HotseatDragController;->isDragAbnormalItem:Z

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result p0

    if-ne p0, v3, :cond_50

    goto :goto_41

    :cond_50
    :goto_50
    return v1
.end method

.method public static final getExpandAreaStartPositionX(Lcom/android/launcher3/OplusHotseat;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getExpandDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    if-eqz p0, :cond_14

    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusHotseat;->getFirstExpandItem(I)Landroid/view/View;

    move-result-object p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    move-object v1, p0

    :cond_16
    if-eqz v1, :cond_1b

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    :cond_1b
    aget p0, v0, v2

    return p0

    :array_1e
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static final getSubscribeAreaEndPositionX()I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getSubscribeDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v0, v2

    if-lez v1, :cond_4f

    aget v1, v0, v2

    sget-object v3, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerWidth()I

    move-result v3

    add-int/2addr v3, v1

    aput v3, v0, v2

    goto :goto_4f

    :cond_20
    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getSubscribeEndItem()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    :cond_29
    aget v1, v0, v2

    if-lez v1, :cond_4f

    aget v1, v0, v2

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    :goto_45
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    aput v3, v0, v2

    :cond_4f
    :goto_4f
    aget v0, v0, v2

    return v0

    :array_52
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static final isDragHotseatExpandOrSubscribeItem(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-nez p0, :cond_11

    return v1

    :cond_11
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public static final isDragOverExpandArea(Lcom/android/launcher3/OplusHotseat;F)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatDragController;->getExpandAreaStartPositionX(Lcom/android/launcher3/OplusHotseat;)I

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    :cond_18
    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_28

    const-string p0, "Hotseat_expand"

    const-string p1, "HotseatDragController"

    const-string v0, "drag over expand area!"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public static final isDragOverSubscribeArea(Lcom/android/launcher3/OplusHotseat;F)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hotseat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_38

    :cond_15
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDragController;->getSubscribeAreaEndPositionX()I

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    :cond_28
    int-to-float p0, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_38

    const-string p0, "Hotseat_expand"

    const-string p1, "HotseatDragController"

    const-string v0, "drag over subscribe area!"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_38
    :goto_38
    return v1
.end method

.method public static final isHotseatShouldAcceptOnDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/OplusHotseat;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_11

    :cond_b
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    return v1

    :cond_12
    if-eqz p0, :cond_35

    if-eqz p1, :cond_35

    if-nez p2, :cond_19

    goto :goto_35

    :cond_19
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v0, -0x65

    if-eq p0, v0, :cond_35

    instance-of p0, p1, Lcom/android/launcher3/OplusHotseat;

    if-eqz p0, :cond_35

    invoke-static {p2}, Lcom/android/launcher3/hotseat/HotseatDragController;->isOutOfNormalAreaSpace(Lcom/android/launcher3/OplusHotseat;)Z

    move-result p0

    if-eqz p0, :cond_35

    const-string p0, "Hotseat_expand"

    const-string p1, "HotseatDragController"

    const-string/jumbo p2, "normal area should not accept on drop"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_35
    :goto_35
    return v1
.end method

.method public static final isInterceptDragDuringExpandAnimating(Lcom/android/launcher/Launcher;Landroid/view/View;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    return v1

    :cond_13
    instance-of p1, p1, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz p1, :cond_18

    return v1

    :cond_18
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->isHotseatExpandAnimating()Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    return v1
.end method

.method public static final isOutOfNormalAreaSpace(Lcom/android/launcher3/OplusHotseat;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result p0

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandConfig;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getHotseatNormalItemMaxCount()I

    move-result v0

    if-ne p0, v0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public static final noNeedAnimForDragFromHotseatToExpandArea()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDragController;->dragFromHotseatToUnNormalAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static final rectifySameView(Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/view/View;)Landroid/view/View;
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sameView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-nez v0, :cond_12

    return-object p1

    :cond_12
    const-string/jumbo v0, "rectifySameView:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "HotseatDragController"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/HotseatDragController;->dragFromHotseatToUnNormalAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    const-string v3, "container.getChildAt(i)"

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    const/4 v5, 0x0

    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v6, v5

    :goto_3a
    if-ge v6, v0, :cond_7a

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_77

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v9, Lcom/android/launcher3/hotseat/HotseatDragController;->dragFromHotseatToUnNormalAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v9, :cond_5e

    iget v10, v8, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v9, v9, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v10, v9, :cond_5e

    const/4 v9, 0x1

    goto :goto_5f

    :cond_5e
    move v9, v5

    :goto_5f
    if-eqz v9, :cond_77

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "rectify dragFromHotseatToUnNormalAreaItem SameView:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_77
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_7a
    instance-of v0, p1, Lcom/android/launcher3/hotseat/HotseatDividerView;

    if-eqz v0, :cond_c6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-eqz v0, :cond_c6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    :goto_8f
    if-ge v5, v6, :cond_c6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c3

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v9, v0, :cond_c3

    if-eq p1, v7, :cond_c3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "rectify dividerView SameView:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_c3
    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    :cond_c6
    return-object p1
.end method

.method public static final resetDragFromHotseatToUnNormalAreaItem()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/hotseat/HotseatDragController;->dragFromHotseatToUnNormalAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method

.method public static final shouldRectifyDragViewVisualCenterX(Lcom/android/launcher3/CellLayout;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of p0, p0, Lcom/android/launcher3/OplusHotseat;

    if-eqz p0, :cond_c

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public final getDragFromHotseatToUnNormalAreaItem()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseat/HotseatDragController;->dragFromHotseatToUnNormalAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0
.end method

.method public final isDragAbnormalItem()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/hotseat/HotseatDragController;->isDragAbnormalItem:Z

    return p0
.end method

.method public final setDragAbnormalItem(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/hotseat/HotseatDragController;->isDragAbnormalItem:Z

    return-void
.end method

.method public final setDragFromHotseatToUnNormalAreaItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/hotseat/HotseatDragController;->dragFromHotseatToUnNormalAreaItem:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method
