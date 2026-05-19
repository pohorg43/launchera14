.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->checkLauncherStateIsNormal(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$checkLauncherStateIsNormal$1"
    f = "LauncherBitmapManager.kt"
    l = {
        0x197
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public J$0:J

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Landroid/content/Context;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->label:I

    const-string v2, "LauncherBitmapManager"

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v3, :cond_15

    iget-wide v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->J$0:J

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_5f

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->$context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getLauncher(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz p1, :cond_61

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v1, v6, :cond_61

    const-string v1, "checkLauncherStateIsNormal : start。currentThread："

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->L$0:Ljava/lang/Object;

    iput-wide v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->J$0:J

    iput v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$checkLauncherStateIsNormal$1;->label:I

    invoke-static {v1, p1, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$gotoLauncherNormal(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5d

    return-object v0

    :cond_5d
    move-object p0, p1

    move-wide v0, v4

    :goto_5f
    move-object p1, p0

    move-wide v4, v0

    :cond_61
    if-eqz p1, :cond_70

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p0, p1, :cond_70

    const/4 v3, 0x0

    :cond_70
    const-string p0, "checkLauncherStateIsNormal : sleep. end = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", success = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
