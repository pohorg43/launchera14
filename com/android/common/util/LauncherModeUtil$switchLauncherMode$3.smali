.class final Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/LauncherModeUtil;->switchLauncherMode(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;)V
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
        "SMAP\nLauncherModeUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherModeUtil.kt\ncom/android/common/util/LauncherModeUtil$switchLauncherMode$3\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,768:1\n120#2,10:769\n*S KotlinDebug\n*F\n+ 1 LauncherModeUtil.kt\ncom/android/common/util/LauncherModeUtil$switchLauncherMode$3\n*L\n125#1:769,10\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.common.util.LauncherModeUtil$switchLauncherMode$3"
    f = "LauncherModeUtil.kt"
    l = {
        0x306
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $launcherMode:Lcom/android/launcher/mode/LauncherMode;

.field public final synthetic $postExecute:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;",
            "Ll4/d<",
            "-",
            "Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->$launcherMode:Lcom/android/launcher/mode/LauncherMode;

    iput-object p3, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->$postExecute:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 6
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

    new-instance v0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;

    iget-object v1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->$launcherMode:Lcom/android/launcher/mode/LauncherMode;

    iget-object p0, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->$postExecute:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;-><init>(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;Ll4/d;)V

    iput-object p1, v0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    if-ne v1, v3, :cond_23

    iget-object v0, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->L$4:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/mode/LauncherMode;

    iget-object v4, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->L$2:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->L$1:Ljava/lang/Object;

    check-cast v5, Lv7/a;

    iget-object p0, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->L$0:Ljava/lang/Object;

    check-cast p0, Lm7/j0;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    move-object v7, p0

    goto :goto_51

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lm7/j0;

    invoke-static {}, Lcom/android/common/util/LauncherModeUtil;->access$getMutex$p()Lv7/a;

    move-result-object v5

    iget-object v4, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->$launcherMode:Lcom/android/launcher/mode/LauncherMode;

    iget-object v6, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->$postExecute:Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->L$3:Ljava/lang/Object;

    iput-object v6, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->L$4:Ljava/lang/Object;

    iput v3, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;->label:I

    invoke-interface {v5, v2, p0}, Lv7/a;->b(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4f

    return-object v0

    :cond_4f
    move-object v7, p1

    move-object v0, v6

    :goto_51
    :try_start_51
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v4, 0x0

    if-eqz p0, :cond_d9

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->initTargetIdpGrid()V

    invoke-static {p0, v1, v4}, Lcom/android/common/util/LauncherModeUtil;->syncDataForLauncherMode(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)Ljava/util/List;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/mode/LauncherModeManager;->getGlobalLayoutSettings()[I

    move-result-object v6

    aget v8, v6, v4

    aget v9, v6, v3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher/mode/LauncherModeManager;->needSwitchDataWhenModeChanged()Z

    move-result v10

    if-eqz v10, :cond_d7

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v1

    const/4 v11, 0x2

    if-eqz v1, :cond_bf

    if-eq v1, v11, :cond_ac

    const/4 v12, 0x3

    if-eq v1, v12, :cond_99

    new-array v1, v11, [I

    aput v4, v1, v4

    aput v4, v1, v3

    goto :goto_d1

    :cond_99
    new-array v1, v11, [I

    const-string v11, "LastSimpleModeCellX"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    aput v11, v1, v4

    const-string v11, "LastSimpleModeCellY"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v3

    goto :goto_d1

    :cond_ac
    new-array v1, v11, [I

    const-string v11, "LastDrawModeCellX"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    aput v11, v1, v4

    const-string v11, "LastDrawModeCellY"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v3

    goto :goto_d1

    :cond_bf
    new-array v1, v11, [I

    const-string v11, "LastStandardModeCellX"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    aput v11, v1, v4

    const-string v11, "LastStandardModeCellY"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v3

    :goto_d1
    invoke-static {p0, v6, v1}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[I)Z

    move-result p0

    iput-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_d7
    move v4, v8

    goto :goto_da

    :cond_d9
    move v9, v4

    :goto_da
    iget-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_f1

    if-eqz v4, :cond_e9

    if-eqz v9, :cond_e9

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0, v4, v9}, Lcom/android/launcher/mode/LauncherModeManager;->saveCurrentModeLayout(II)V

    :cond_e9
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->changedMode()V

    goto :goto_f9

    :cond_f1
    const-string p0, "LauncherModeUtil"

    const-string/jumbo v1, "switch LauncherMode fail"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f9
    sget-object p0, Lm7/y0;->a:Lm7/y0;

    sget-object v8, Lr7/v;->a:Lm7/b2;

    new-instance v10, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;

    invoke-direct {v10, v0, p1, v2}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Ll4/d;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_10a
    .catchall {:try_start_51 .. :try_end_10a} :catchall_10e

    invoke-interface {v5, v2}, Lv7/a;->a(Ljava/lang/Object;)V

    return-object p0

    :catchall_10e
    move-exception p0

    invoke-interface {v5, v2}, Lv7/a;->a(Ljava/lang/Object;)V

    throw p0
.end method
