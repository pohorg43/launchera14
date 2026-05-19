.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->refreshLauncherBitmapForProviderCall(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;)V
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
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1"
    f = "LauncherBitmapManager.kt"
    l = {
        0xba,
        0xc2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Ljava/util/concurrent/CompletableFuture;Ll4/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Landroid/content/Context;",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->$launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    iput-object p4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->$future:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 9
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

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->$launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->$future:Ljava/util/concurrent/CompletableFuture;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Ljava/util/concurrent/CompletableFuture;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2a

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_87

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_72

    :cond_2a
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->$context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getLauncher(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    if-eqz p1, :cond_72

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    if-eqz v5, :cond_46

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/LauncherState;

    goto :goto_47

    :cond_46
    move-object v5, v4

    :goto_47
    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v5, v6, :cond_72

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->L$1:Ljava/lang/Object;

    iput-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->label:I

    new-instance v3, Ll4/i;

    invoke-static {p0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v5

    invoke-direct {v3, v5}, Ll4/i;-><init>(Ll4/d;)V

    new-instance v5, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1$1$1$1;

    invoke-direct {v5, v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1$1$1$1;-><init>(Ll4/d;)V

    invoke-static {v1, p1, v5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$runLauncherNormal(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3}, Ll4/i;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6f

    const-string v1, "frame"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6f
    if-ne p1, v0, :cond_72

    return-object v0

    :cond_72
    :goto_72
    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->$launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    iput-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->label:I

    invoke-static {p1, v1, v3, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$buildLauncherBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_87

    return-object v0

    :cond_87
    :goto_87
    const-string p1, "LauncherBitmapManager"

    const-string/jumbo v0, "refreshLauncherBitmapForProviderCall buildLauncherBitmap end"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$refreshLauncherBitmapForProviderCall$1;->$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
