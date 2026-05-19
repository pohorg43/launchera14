.class public final Lcom/oplus/quickstep/shortcuts/OplusLockSettingsShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/shortcuts/OplusLockSettingsShortcut$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/shortcuts/OplusLockSettingsShortcut$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusLockSettingsShortcut"


# instance fields
.field private final activity:Lcom/android/launcher3/BaseDraggingActivity;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusLockSettingsShortcut$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/shortcuts/OplusLockSettingsShortcut$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusLockSettingsShortcut;->Companion:Lcom/oplus/quickstep/shortcuts/OplusLockSettingsShortcut$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    const v2, 0x7f080738

    const v3, 0x7f12044d

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusLockSettingsShortcut;->activity:Lcom/android/launcher3/BaseDraggingActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isQucikClick()Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p0, "OplusLockSettingsShortcut"

    const-string p1, "quick click the LockSettings menu"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object p0, p0, Lcom/oplus/quickstep/shortcuts/OplusLockSettingsShortcut;->activity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/ui/LockSettingActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
