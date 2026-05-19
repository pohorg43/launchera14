.class final Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1$onFinish$finishSurfaceRunnable$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $clickedView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1$onFinish$finishSurfaceRunnable$1;->this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iput-object p2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1$onFinish$finishSurfaceRunnable$1;->$clickedView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1$onFinish$finishSurfaceRunnable$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 3

    const-string v0, "IconSurfaceHolder"

    const-string/jumbo v1, "setUpFloatingIconSurface release last icon now"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1$onFinish$finishSurfaceRunnable$1;->this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1$onFinish$finishSurfaceRunnable$1;->$clickedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->resetIconToVisible(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1$onFinish$finishSurfaceRunnable$1;->this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    invoke-static {v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getIconSurfaceManager$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1$onFinish$finishSurfaceRunnable$1;->$clickedView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->releaseIconSurface(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1$onFinish$finishSurfaceRunnable$1;->this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setCurrentFloatingIconSurface(Lcom/android/launcher3/anim/floatingdrawable/IconSurface;)V

    return-void
.end method
