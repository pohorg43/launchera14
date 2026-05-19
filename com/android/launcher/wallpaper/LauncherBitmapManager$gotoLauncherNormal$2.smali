.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->gotoLauncherNormal(Landroid/content/Context;Ll4/d;)Ljava/lang/Object;
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherBitmapManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherBitmapManager.kt\ncom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1172:1\n1#2:1173\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$gotoLauncherNormal$2"
    f = "LauncherBitmapManager.kt"
    l = {
        0x103
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

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

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;-><init>(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_74

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->$context:Landroid/content/Context;

    if-eqz p1, :cond_77

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v1, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getLauncher(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    if-nez p1, :cond_2d

    goto :goto_77

    :cond_2d
    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v1, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$canMakeLauncherBitmapNow(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string p0, "LauncherBitmapManager"

    const-string p1, "gotoLauncherNormal, goToState no needMakeLauncherBimtap."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_3f
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAnimate(Z)V

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->label:I

    new-instance v2, Ll4/i;

    invoke-static {p0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v3

    invoke-direct {v2, v3}, Ll4/i;-><init>(Ll4/d;)V

    new-instance v3, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2$1$1;

    invoke-direct {v3, v2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2$1$1;-><init>(Ll4/d;)V

    invoke-static {v1, p1, v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$runLauncherNormal(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v2}, Ll4/i;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_71

    const-string v1, "frame"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_71
    if-ne p1, v0, :cond_74

    return-object v0

    :cond_74
    :goto_74
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_77
    :goto_77
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
