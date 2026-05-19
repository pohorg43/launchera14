.class public Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;
.super Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
        "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final MOVE_TO_BOTTOM_OR_RIGHT:I = 0x7f0a0063

.field public static final MOVE_TO_TOP_OR_LEFT:I = 0x7f0a0064


# instance fields
.field private final mLauncherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0a004f

    const v2, 0x7f1200a7

    const/16 v3, 0x2f

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v2, 0x7f120549

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    const v1, 0x7f0a0073

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0a0064

    const v2, 0x7f12039f

    const/16 v3, 0x28

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0a0063

    const v2, 0x7f12039e

    const/16 v3, 0x2e

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
            "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
            ">.",
            "LauncherAction;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_26

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_POPUP_MENU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object p2

    if-eqz p2, :cond_1a

    const p2, 0x7f0a0073

    goto :goto_1d

    :cond_1a
    const p2, 0x7f0a004f

    :goto_1d
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p2, 0x7f0a0064

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p1, 0x7f0a0063

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z
    .registers 13

    instance-of p4, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_68

    const p4, 0x7f0a0064

    if-eq p3, p4, :cond_10

    const v2, 0x7f0a0063

    if-ne p3, v2, :cond_68

    :cond_10
    move-object p1, p2

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-ne p3, p4, :cond_17

    move v6, v0

    goto :goto_18

    :cond_17
    move v6, v1

    :goto_18
    iget p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne p3, v1, :cond_3c

    sget-object p2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x0

    iget-object v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    move v5, v6

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/quickstep/SystemUiProxy;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_67

    :cond_3c
    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p3, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 p3, 0x0

    iget-object p4, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/quickstep/SystemUiProxy;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_67
    return v1

    :cond_68
    const p2, 0x7f0a004f

    if-eq p3, p2, :cond_74

    const p2, 0x7f0a0073

    if-ne p3, p2, :cond_73

    goto :goto_74

    :cond_73
    return v0

    :cond_74
    :goto_74
    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->showPopupMenuForIcon(Lcom/android/launcher3/BubbleTextView;)V

    return v1
.end method
