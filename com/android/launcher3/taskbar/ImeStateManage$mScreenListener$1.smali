.class public final Lcom/android/launcher3/taskbar/ImeStateManage$mScreenListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/ImeStateManage;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/ImeStateManage;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/ImeStateManage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ImeStateManage$mScreenListener$1;->this$0:Lcom/android/launcher3/taskbar/ImeStateManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOn()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ImeStateManage$mScreenListener$1;->this$0:Lcom/android/launcher3/taskbar/ImeStateManage;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/ImeStateManage;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ImeStateManage$mScreenListener$1;->this$0:Lcom/android/launcher3/taskbar/ImeStateManage;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/ImeStateManage;->hasAnyImeFlag(I)Z

    move-result p0

    if-nez p0, :cond_11

    return-void

    :cond_11
    const-string p0, "ImeStateManage"

    const-string/jumbo v1, "onScreenTurnedOn"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    const/high16 v1, 0x40000

    or-int/2addr p0, v1

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_28

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateSysuiStateFlags(IZ)V

    :cond_28
    return-void
.end method
