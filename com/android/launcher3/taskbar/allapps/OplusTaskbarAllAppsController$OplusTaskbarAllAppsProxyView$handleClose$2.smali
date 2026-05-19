.class final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView$handleClose$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;->handleClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $animate:Z

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController<",
            "TT;>.OplusTaskbarAllAppsProxyView;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController<",
            "TT;>.OplusTaskbarAllAppsProxyView;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView$handleClose$2;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView$handleClose$2;->$animate:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView$handleClose$2;->invoke(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V
    .registers 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->isSlideInViewOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView$handleClose$2;->this$0:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;->access$getMFromStartApp$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView$handleClose$2;->$animate:Z

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->closeWhenStartApp(Z)V

    goto :goto_1f

    :cond_1a
    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView$handleClose$2;->$animate:Z

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->close(Z)V

    :cond_1f
    :goto_1f
    return-void
.end method
