.class public final Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubscribeItemHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscribeItemHelper.kt\ncom/android/launcher3/hotseat/subscribe/SubscribeItemHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,240:1\n1#2:241\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;

.field private static final TAG:Ljava/lang/String; = "SubscribeItemHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final canClickWhenGlobalSearchShow(Lcom/android/launcher3/views/ActivityContext;)Z
    .registers 3

    instance-of p0, p1, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_38

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result p0

    if-eqz p0, :cond_38

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    const-string p0, "Taskbar"

    const-string p1, "SubscribeItemHelper"

    const-string/jumbo v0, "onClick AllApps or FileManager return, when hotseat show but launcher paused!"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_38
    const/4 p0, 0x1

    return p0
.end method

.method public static final createSubscribeItemInfo(II)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, -0x65

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 p1, 0x0

    iput p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 p1, 0x1

    iput p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->getSubscribeIconBitmap(I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    sget-object p1, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->getSubscribeItemTitle(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.android.launcher"

    const-string v2, "com.android.launcher.Launcher"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createSubscribeItemInfo:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taskbar"

    const-string v1, "SubscribeItemHelper"

    invoke-static {p1, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final createSubscribeItemView(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string/jumbo p1, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getSubscribeIconBitmap(I)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconConfig()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v2

    const-string v3, "SubscribeItemHelper"

    const-string v4, "Taskbar"

    if-nez v2, :cond_21

    const-string v2, "getSubscribeIconBitmap iconConfig null"

    invoke-static {v4, v3, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    goto :goto_25

    :cond_21
    invoke-virtual {v2}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v2

    :goto_25
    const-string v5, "getSubscribeIconBitmap,iconTheme:"

    const-string v6, ",itemType:"

    invoke-static {v5, v2, v6, p0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p0, :pswitch_data_70

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid itemType "

    invoke-static {v1, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3f  #0xce
    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_49

    const p0, 0x7f080759

    goto :goto_5e

    :cond_49
    const p0, 0x7f080758

    goto :goto_5e

    :pswitch_4d  #0xcd
    const p0, 0x7f080793

    goto :goto_5e

    :pswitch_51  #0xcc
    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5b

    const p0, 0x7f080757

    goto :goto_5e

    :cond_5b
    const p0, 0x7f080756

    :goto_5e
    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_65

    return-object v1

    :cond_65
    invoke-static {p0}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_6f

    invoke-static {p0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    :cond_6f
    return-object v1

    :pswitch_data_70
    .packed-switch 0xcc
        :pswitch_51  #000000cc
        :pswitch_4d  #000000cd
        :pswitch_3f  #000000ce
    .end packed-switch
.end method

.method private final getSubscribeItemTitle(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_4e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid itemType "

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_f  #0xce
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120614

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getAppContext().resource…skbar_subscribe_file_bag)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4d

    :pswitch_24  #0xcd
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120616

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getAppContext().resource…_subscribe_global_search)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4d

    :pswitch_39  #0xcc
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120612

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getAppContext().resource…askbar_subscribe_all_app)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4d
    return-object p0

    :pswitch_data_4e
    .packed-switch 0xcc
        :pswitch_39  #000000cc
        :pswitch_24  #000000cd
        :pswitch_f  #000000ce
    .end packed-switch
.end method

.method private final onClickAllApp(Lcom/android/launcher3/views/ActivityContext;)V
    .registers 7

    const/high16 p0, 0x20000

    invoke-static {p1, p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    const-string/jumbo v0, "onClickAllApp to open: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p0, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    const-string v3, "Taskbar"

    const-string v4, "SubscribeItemHelper"

    invoke-static {v0, v2, v3, v4}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_20

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->showAllApps(Lcom/android/launcher3/views/ActivityContext;)V

    goto :goto_23

    :cond_20
    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :goto_23
    return-void
.end method

.method private final onClickFileManager(Lcom/android/launcher3/views/ActivityContext;)V
    .registers 9

    const-string p0, "Taskbar"

    const-string v0, "SubscribeItemHelper"

    const-string/jumbo v1, "onClickFileManager"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array v1, p0, [I

    fill-array-data v1, :array_a0

    instance-of v2, p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v3, 0x1

    const/16 v4, 0xce

    const/4 v5, 0x0

    if-eqz v2, :cond_3d

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getTaskbarSubscribeItemView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object v6

    if-eqz v6, :cond_3b

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v6

    if-eqz v6, :cond_3b

    aget v3, v6, v3

    goto :goto_64

    :cond_3b
    move v3, v5

    goto :goto_64

    :cond_3d
    instance-of v2, p1, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_61

    invoke-static {v4}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getHotseatSubscribeItemView(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    move-object v6, p1

    check-cast v6, Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v6

    if-eqz v6, :cond_3b

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v6

    if-eqz v6, :cond_3b

    aget v3, v6, v3

    goto :goto_64

    :cond_61
    const/4 v2, 0x0

    move v3, v5

    move v4, v3

    :goto_64
    instance-of v6, v2, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    if-eqz v6, :cond_9f

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_93

    const-string v6, "checked state !! and openFileManager"

    invoke-static {v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object v6

    aget v1, v1, v5

    div-int/2addr v4, p0

    add-int/2addr v4, v1

    invoke-virtual {v6, p1, v4, v3}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->openFileManager(Lcom/android/launcher3/views/ActivityContext;II)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->isFileManagerPermissionPageOpened()Z

    move-result p0

    if-eqz p0, :cond_9f

    const-string p0, "isFileManagerPermissionPageOpened and set check state to false"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;->setUnCheckedStateIfNecessary()V

    goto :goto_9f

    :cond_93
    const-string p0, "Unchecked state !! and closeFileManagerIfNeeded"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->closeFileManager()V

    :cond_9f
    :goto_9f
    return-void

    :array_a0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private final onClickGlobalSearch()V
    .registers 9

    const-string p0, "Taskbar"

    const-string v0, "SubscribeItemHelper"

    const-string/jumbo v1, "onClickGlobalSearch"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.app.SearchManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/app/SearchManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static final onSubscribeItemClicked(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p2, "context"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "itemInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_30

    const/4 p0, 0x0

    return p0

    :pswitch_12  #0xce
    sget-object p1, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->canClickWhenGlobalSearchShow(Lcom/android/launcher3/views/ActivityContext;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p1, p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->onClickFileManager(Lcom/android/launcher3/views/ActivityContext;)V

    :cond_1d
    return p2

    :pswitch_1e  #0xcd
    sget-object p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;

    invoke-direct {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->onClickGlobalSearch()V

    return p2

    :pswitch_24  #0xcc
    sget-object p1, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->canClickWhenGlobalSearchShow(Lcom/android/launcher3/views/ActivityContext;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p1, p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->onClickAllApp(Lcom/android/launcher3/views/ActivityContext;)V

    :cond_2f
    return p2

    :pswitch_data_30
    .packed-switch 0xcc
        :pswitch_24  #000000cc
        :pswitch_1e  #000000cd
        :pswitch_12  #000000ce
    .end packed-switch
.end method
