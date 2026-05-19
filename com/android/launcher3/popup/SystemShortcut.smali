.class public abstract Lcom/android/launcher3/popup/SystemShortcut;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/SystemShortcut$Install;,
        Lcom/android/launcher3/popup/SystemShortcut$AppInfo;,
        Lcom/android/launcher3/popup/SystemShortcut$Widgets;,
        Lcom/android/launcher3/popup/SystemShortcut$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SystemShortcut"

.field public static final WIDGETS:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isAddDivideLine:Z

.field private isEnabled:Z

.field public mAccessibilityActionId:I

.field private final mIconResId:I

.field public final mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field public final mLabelResId:I

.field public final mOriginalView:Landroid/view/View;

.field public final mTarget:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/popup/j0;->a:Lcom/android/launcher3/popup/j0;

    sput-object v0, Lcom/android/launcher3/popup/SystemShortcut;->WIDGETS:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v0, Lcom/android/launcher3/popup/k0;->a:Lcom/android/launcher3/popup/k0;

    sput-object v0, Lcom/android/launcher3/popup/SystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v0, Lcom/android/launcher3/popup/i0;->a:Lcom/android/launcher3/popup/i0;

    sput-object v0, Lcom/android/launcher3/popup/SystemShortcut;->INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isAddDivideLine:Z

    iput p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    iput p2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    iput p2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    iput-object p3, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p5, p0, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/popup/SystemShortcut;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isAddDivideLine:Z

    iget v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    iput v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    iget v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    iput v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    iget v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    iput v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    iget-object v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p1, p1, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    return-void
.end method

.method public static dismissTaskMenuView(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)V"
        }
    .end annotation

    instance-of v0, p0, Lcom/android/launcher/Launcher;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/RecentContainerView;->clearALLPopView(Z)V

    return-void

    :cond_f
    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    const v0, 0x325d8b

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut;->lambda$static$0(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut;->lambda$static$1(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 8

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/popup/PopupDataProvider;->getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    return-object v1

    :cond_26
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Widgets;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v0
.end method

.method private static synthetic lambda$static$1(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 8

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    instance-of v3, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v3, :cond_24

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p0}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result v3

    goto :goto_25

    :cond_24
    move v3, v2

    :goto_25
    if-nez v0, :cond_2b

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :cond_2b
    :goto_2b
    if-nez v1, :cond_2f

    const/4 p0, 0x0

    return-object p0

    :cond_2f
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$Install;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Install;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public createAccessibilityAction(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .registers 4

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    iget p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public getIconAndLabelForPopupListWindow(Landroid/content/Context;)Lcom/coui/appcompat/poplist/PopupListItem;
    .registers 4

    new-instance v0, Lcom/coui/appcompat/poplist/PopupListItem;

    iget v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    iget p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public hasHandlerForAction(I)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isAddDivideLine()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isAddDivideLine:Z

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    return p0
.end method

.method public isLeftGroup()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public makeTextMarquee(Ljava/lang/Boolean;)V
    .registers 2

    return-void
.end method

.method public setAddDivideLine(Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->isAddDivideLine:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    return-void
.end method

.method public setIconAndContentDescriptionFor(Landroid/widget/ImageView;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/popup/SystemShortcut;->updateIcon(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled:Z

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setIconAndLabelFor(Landroid/widget/TextView;)V
    .registers 2

    iget p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setIconAndLabelFor(Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    iget p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;->applyIconAndText(II)V

    return-void
.end method

.method public updateIcon(Landroid/view/View;I)V
    .registers 7

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultThemeResource(J)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/common/util/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v0, :cond_4d

    if-eqz v1, :cond_4d

    sparse-switch p2, :sswitch_data_82

    goto :goto_4d

    :sswitch_16
    const p2, 0x7f0809a2

    goto :goto_4d

    :sswitch_1a
    const p2, 0x7f080912

    goto :goto_4d

    :sswitch_1e
    const p2, 0x7f0807de

    goto :goto_4d

    :sswitch_22
    const p2, 0x7f0807dc

    goto :goto_4d

    :sswitch_26
    const p2, 0x7f0807da

    goto :goto_4d

    :sswitch_2a
    const p2, 0x7f0807d8

    goto :goto_4d

    :sswitch_2e
    const p2, 0x7f0807d6

    goto :goto_4d

    :sswitch_32
    const p2, 0x7f0807d4

    goto :goto_4d

    :sswitch_36
    const p2, 0x7f0806f1

    goto :goto_4d

    :sswitch_3a
    const p2, 0x7f0806e6

    goto :goto_4d

    :sswitch_3e
    const p2, 0x7f0806e4

    goto :goto_4d

    :sswitch_42
    const p2, 0x7f08067a

    goto :goto_4d

    :sswitch_46
    const p2, 0x7f0804e2

    goto :goto_4d

    :sswitch_4a
    const p2, 0x7f0804ab

    :cond_4d
    :goto_4d
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_57

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5a

    :cond_57
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_5a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_81

    const-string/jumbo p1, "setIconAndLabelFor isDefaultColorTheme  = "

    const-string v2, " isDarkMode = "

    const-string v3, " mLabelResId = "

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " mIconResId = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemShortcut"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    return-void

    :sswitch_data_82
    .sparse-switch
        0x7f0804aa -> :sswitch_4a
        0x7f0804e1 -> :sswitch_46
        0x7f080679 -> :sswitch_42
        0x7f0806e3 -> :sswitch_3e
        0x7f0806e5 -> :sswitch_3a
        0x7f0806f0 -> :sswitch_36
        0x7f0807d3 -> :sswitch_32
        0x7f0807d5 -> :sswitch_2e
        0x7f0807d7 -> :sswitch_2a
        0x7f0807d9 -> :sswitch_26
        0x7f0807db -> :sswitch_22
        0x7f0807dd -> :sswitch_1e
        0x7f080911 -> :sswitch_1a
        0x7f0809a1 -> :sswitch_16
    .end sparse-switch
.end method
