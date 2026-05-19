.class public final Lcom/android/launcher3/taskbar/filemanager/FileManagerIconSwitchUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/taskbar/filemanager/FileManagerIconSwitchUtils;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerIconSwitchUtils;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerIconSwitchUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerIconSwitchUtils;->INSTANCE:Lcom/android/launcher3/taskbar/filemanager/FileManagerIconSwitchUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getHotseatFileManagerItemView(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Landroid/view/View;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x0

    if-ge v1, v0, :cond_25

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v5, :cond_17

    move-object v2, v4

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    :cond_17
    if-nez v2, :cond_1a

    goto :goto_22

    :cond_1a
    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v4, 0xce

    if-ne v2, v4, :cond_22

    move-object v2, v3

    goto :goto_25

    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_25
    :goto_25
    return-object v2
.end method

.method public static final openOrCloseFileManagerCallBack(Ljava/lang/Integer;Ljava/lang/String;Lcom/android/launcher3/ShortcutAndWidgetContainer;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "settingsKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortcutsAndWidgets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileBagVisibilityChanged"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p1

    if-eqz p1, :cond_81

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result p1

    if-nez p1, :cond_81

    invoke-static {p2}, Lcom/android/launcher3/taskbar/filemanager/FileManagerIconSwitchUtils;->getHotseatFileManagerItemView(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_2f

    goto :goto_37

    :cond_2f
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_37

    move v2, v1

    goto :goto_38

    :cond_37
    :goto_37
    move v2, v0

    :goto_38
    invoke-virtual {p2, v2}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->setFileManagerVisible(Z)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p2

    const/4 v2, 0x2

    if-nez p0, :cond_43

    goto :goto_4b

    :cond_43
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4b

    move v3, v1

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v3, v0

    :goto_4c
    invoke-virtual {p2, v3}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->setFileManagerPermissionPageOpened(Z)V

    instance-of p2, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p2, :cond_81

    if-nez p0, :cond_56

    goto :goto_6e

    :cond_56
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6e

    instance-of v2, p1, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    if-eqz v2, :cond_6e

    const-string p0, "FileManagerIconSwitchUtils"

    const-string/jumbo p2, "set uncheck state when open permission page on hotseat"

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->setUnCheckedStateIfNecessary()V

    goto :goto_81

    :cond_6e
    :goto_6e
    if-nez p0, :cond_71

    goto :goto_78

    :cond_71
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_78

    move v0, v1

    :cond_78
    :goto_78
    if-eqz p2, :cond_7d

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    goto :goto_7e

    :cond_7d
    const/4 p1, 0x0

    :goto_7e
    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/OplusBubbleTextView;)V

    :cond_81
    :goto_81
    return-void
.end method

.method public static final openOrCloseFileManagerCallBack(Ljava/lang/Integer;Ljava/lang/String;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_a

    const-string v0, "fileBagVisibilityChanged"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    :cond_a
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p1

    if-eqz p1, :cond_80

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result p1

    if-nez p1, :cond_80

    const/16 p1, 0xce

    invoke-static {p1, p2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getTaskbarSubscribeItemView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_27

    goto :goto_2f

    :cond_27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2f

    move v2, v1

    goto :goto_30

    :cond_2f
    :goto_2f
    move v2, v0

    :goto_30
    invoke-virtual {p2, v2}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->setFileManagerVisible(Z)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p2

    const/4 v2, 0x2

    if-nez p0, :cond_3b

    goto :goto_43

    :cond_3b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_43

    move v3, v1

    goto :goto_44

    :cond_43
    :goto_43
    move v3, v0

    :goto_44
    invoke-virtual {p2, v3}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->setFileManagerPermissionPageOpened(Z)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->setFileWindowLoadingFlag(Z)V

    instance-of p2, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p2, :cond_80

    if-nez p0, :cond_55

    goto :goto_6d

    :cond_55
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6d

    instance-of v2, p1, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    if-eqz v2, :cond_6d

    const-string p0, "FileManagerIconSwitchUtils"

    const-string/jumbo p2, "set uncheck state when open permission page on taskbar"

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->setUnCheckedStateIfNecessary()V

    goto :goto_80

    :cond_6d
    :goto_6d
    if-nez p0, :cond_70

    goto :goto_77

    :cond_70
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_77

    move v0, v1

    :cond_77
    :goto_77
    if-eqz p2, :cond_7c

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    goto :goto_7d

    :cond_7c
    const/4 p1, 0x0

    :goto_7d
    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/OplusBubbleTextView;)V

    :cond_80
    :goto_80
    return-void
.end method
