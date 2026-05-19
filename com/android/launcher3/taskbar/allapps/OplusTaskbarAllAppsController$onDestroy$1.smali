.class final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$onDestroy$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->onDestroy(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $whenCloseWindow:Z

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController<",
            "TT;>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$onDestroy$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$onDestroy$1;->$whenCloseWindow:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$onDestroy$1;->invoke(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$onDestroy$1;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$onDestroy$1;->$whenCloseWindow:Z

    const/4 v2, 0x0

    if-nez p0, :cond_32

    :try_start_15
    const-class p0, Landroid/view/WindowManager;

    invoke-virtual {p1, p0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_30

    invoke-interface {p0, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_22} :catch_23

    goto :goto_30

    :catch_23
    move-exception p0

    const-string/jumbo p1, "remove taskbar all apps dragLayer when destroy e:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "TaskbarAllAppsController"

    invoke-static {p0, p1, v0}, Lv/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_30
    :goto_30
    const/4 v2, 0x1

    goto :goto_39

    :cond_32
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->reset(Z)V

    :goto_39
    invoke-static {v1, v2}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->access$setMHasRemovedWindow$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;Z)V

    return-void
.end method
