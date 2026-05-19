.class public final Lcom/android/launcher3/bottomsearch/BottomManagerInjector$roleListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/bottomsearch/BottomManagerInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    const-string p2, "android.app.role.HOME"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    const-string p1, "BottomManagerInjector"

    const-string/jumbo p2, "roleListener RoleManager.ROLE_HOME"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->access$getContext$p()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1c

    sget-object p2, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->INSTANCE:Lcom/android/launcher3/bottomsearch/BottomManagerInjector;

    const/4 v0, 0x1

    invoke-static {p2, v0, p1}, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->access$startService(Lcom/android/launcher3/bottomsearch/BottomManagerInjector;ZLandroid/content/Context;)V

    :cond_1c
    invoke-static {}, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->access$getRoleManager$p()Landroid/app/role/RoleManager;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/app/role/RoleManager;->removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    :cond_29
    return-void
.end method
