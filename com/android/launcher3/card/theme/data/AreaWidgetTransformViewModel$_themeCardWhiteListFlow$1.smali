.class final Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;-><init>(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lo7/q<",
        "-",
        "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;",
        ">;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.card.theme.data.AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1"
    f = "AreaWidgetTransformViewModel.kt"
    l = {
        0x50,
        0x53
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->this$0:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

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

    new-instance v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->this$0:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Ll4/d;)V

    iput-object p1, v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lo7/q;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->invoke(Lo7/q;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lo7/q;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/q<",
            "-",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    if-eq v1, v3, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_7a

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1$listener$1;

    iget-object v4, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lo7/q;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_51

    :cond_24
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->L$0:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lo7/q;

    sget-object p1, Lcom/android/launcher3/util/Executors;->FETCH_ICON_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1$listener$1;

    iget-object v5, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->this$0:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    invoke-direct {v1, v5, v4, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1$listener$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Lo7/q;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->this$0:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getAppContext()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->label:I

    invoke-virtual {p1, v5, p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->initTargetWidgetInfos(Landroid/content/Context;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_51

    return-object v0

    :cond_51
    :goto_51
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v5, "widgetcard.switch.whitelist"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v5, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1$1;

    invoke-direct {p1, v1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1$listener$1;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;->label:I

    invoke-static {v4, p1, p0}, Lo7/o;->a(Lo7/q;Lkotlin/jvm/functions/Function0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7a

    return-object v0

    :cond_7a
    :goto_7a
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
