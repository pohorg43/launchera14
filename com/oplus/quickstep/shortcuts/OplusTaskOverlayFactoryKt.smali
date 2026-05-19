.class public final Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MENU_OPTIONS:[Lcom/android/quickstep/TaskShortcutFactory;

.field private static final MENU_OPTIONS_FOLD:[Lcom/android/quickstep/TaskShortcutFactory;

.field private static final MENU_OPTIONS_GRID_TABLET:[Lcom/android/quickstep/TaskShortcutFactory;

.field private static final MENU_OPTIONS_TABLET:[Lcom/android/quickstep/TaskShortcutFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 20

    const/16 v0, 0xa

    new-array v1, v0, [Lcom/android/quickstep/TaskShortcutFactory;

    sget-object v2, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->FLOAT_WINDOW:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->MULTI_WINDOW:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sget-object v6, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->GROUP_DIVIDER:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v8, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->LOCK_APP:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    sget-object v10, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->UNLOCK_APP:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v11, 0x4

    aput-object v10, v1, v11

    sget-object v12, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->CONTENT_PROTECT:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v13, 0x5

    aput-object v12, v1, v13

    sget-object v14, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->PIN:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v15, 0x6

    aput-object v14, v1, v15

    sget-object v16, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->EXTERNAL_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v0, 0x7

    aput-object v16, v1, v0

    sget-object v16, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->APP_INFO:Lcom/android/quickstep/TaskShortcutFactory;

    const/16 v0, 0x8

    aput-object v16, v1, v0

    sget-object v18, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->LOCK_SETTINGS:Lcom/android/quickstep/TaskShortcutFactory;

    const/16 v19, 0x9

    aput-object v18, v1, v19

    sput-object v1, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS:[Lcom/android/quickstep/TaskShortcutFactory;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/android/quickstep/TaskShortcutFactory;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    aput-object v6, v1, v7

    sget-object v6, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->SCALE_TO_BIG:Lcom/android/quickstep/TaskShortcutFactory;

    aput-object v6, v1, v9

    sget-object v6, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->SCALE_TO_SMALL:Lcom/android/quickstep/TaskShortcutFactory;

    aput-object v6, v1, v11

    aput-object v8, v1, v13

    aput-object v10, v1, v15

    const/4 v6, 0x7

    aput-object v12, v1, v6

    aput-object v14, v1, v0

    aput-object v16, v1, v19

    const/16 v17, 0xa

    aput-object v18, v1, v17

    sput-object v1, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS_FOLD:[Lcom/android/quickstep/TaskShortcutFactory;

    new-array v1, v6, [Lcom/android/quickstep/TaskShortcutFactory;

    aput-object v8, v1, v3

    aput-object v10, v1, v5

    aput-object v2, v1, v7

    aput-object v14, v1, v9

    aput-object v12, v1, v11

    aput-object v16, v1, v13

    aput-object v18, v1, v15

    sput-object v1, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS_TABLET:[Lcom/android/quickstep/TaskShortcutFactory;

    new-array v0, v0, [Lcom/android/quickstep/TaskShortcutFactory;

    aput-object v8, v0, v3

    aput-object v10, v0, v5

    aput-object v2, v0, v7

    aput-object v4, v0, v9

    aput-object v14, v0, v11

    aput-object v12, v0, v13

    aput-object v16, v0, v15

    const/4 v1, 0x7

    aput-object v18, v0, v1

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS_GRID_TABLET:[Lcom/android/quickstep/TaskShortcutFactory;

    return-void
.end method

.method public static final getPopupListWindowItems(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/TaskView;",
            "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;>;)",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation

    const-string v0, "taskView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskContainertaskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS_FOLD:[Lcom/android/quickstep/TaskShortcutFactory;

    goto :goto_31

    :cond_26
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-object v2, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS_GRID_TABLET:[Lcom/android/quickstep/TaskShortcutFactory;

    goto :goto_31

    :cond_2f
    sget-object v2, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS:[Lcom/android/quickstep/TaskShortcutFactory;

    :goto_31
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_34
    if-ge v5, v3, :cond_8d

    aget-object v6, v2, v5

    invoke-interface {v6, v1, p1}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v7

    if-eqz v7, :cond_8a

    sget-object v8, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS_FOLD:[Lcom/android/quickstep/TaskShortcutFactory;

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v8

    if-nez v8, :cond_5d

    sget-object v8, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->SCALE_TO_BIG:Lcom/android/quickstep/TaskShortcutFactory;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8a

    sget-object v8, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->SCALE_TO_SMALL:Lcom/android/quickstep/TaskShortcutFactory;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    goto :goto_8a

    :cond_5d
    invoke-virtual {v7, v1}, Lcom/android/launcher3/popup/SystemShortcut;->getIconAndLabelForPopupListWindow(Landroid/content/Context;)Lcom/coui/appcompat/poplist/PopupListItem;

    move-result-object v6

    instance-of v8, v7, Lcom/oplus/quickstep/shortcuts/OplusLockAppShortcut;

    if-nez v8, :cond_69

    instance-of v8, v7, Lcom/oplus/quickstep/shortcuts/OplusUnLockAppShortcut;

    if-eqz v8, :cond_7b

    :cond_69
    iget-object v8, p0, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {v8}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->isShowSuperLockRelatedUI()Z

    move-result v8

    if-eqz v8, :cond_7b

    sget-object v8, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v8}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->isUserOperateSuperLockInMenu()Z

    move-result v8

    if-nez v8, :cond_7b

    iput v4, v6, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    :cond_7b
    instance-of v8, v7, Lcom/oplus/quickstep/shortcuts/OplusGroupDividerShortcut;

    if-eqz v8, :cond_82

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    :cond_82
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_8a

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    :goto_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_8d
    return-object v0
.end method
