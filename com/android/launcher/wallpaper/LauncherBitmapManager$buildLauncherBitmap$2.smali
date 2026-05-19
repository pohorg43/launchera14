.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->buildLauncherBitmap(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Ll4/d;)Ljava/lang/Object;
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
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$buildLauncherBitmap$2"
    f = "LauncherBitmapManager.kt"
    l = {
        0x136,
        0x13a,
        0x13c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Landroid/content/Context;",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->$launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
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

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->$launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_26

    if-eq v1, v5, :cond_1d

    if-eq v1, v4, :cond_10

    if-ne v1, v3, :cond_15

    :cond_10
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_ae

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_9f

    :cond_26
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->$context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getLauncher(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const-string p1, "LauncherBitmapManager"

    if-nez v1, :cond_3d

    const-string p0, "buildLauncherBitmap , model.getCallback() is not launcher."

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_3d
    iget-object v6, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-virtual {v6, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->calculateTextViewCanTransferColor(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v7

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buildLauncherBitmap scaleXY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, "; "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000  # 1.0f

    cmpg-float v7, v7, p1

    const/4 v9, 0x0

    if-nez v7, :cond_73

    move v7, v5

    goto :goto_74

    :cond_73
    move v7, v9

    :goto_74
    if-eqz v7, :cond_8b

    cmpg-float p1, v8, p1

    if-nez p1, :cond_7b

    move v9, v5

    :cond_7b
    if-nez v9, :cond_7e

    goto :goto_8b

    :cond_7e
    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->$launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    iput v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->label:I

    invoke-static {p1, v1, v2, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$buildLauncherBitmapInternal(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_ae

    return-object v0

    :cond_8b
    :goto_8b
    sget-object p1, Lm7/y0;->a:Lm7/y0;

    sget-object p1, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2$1;

    invoke-direct {v3, v6, v2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2$1;-><init>(Lcom/android/launcher3/OplusWorkspace;Ll4/d;)V

    iput-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->label:I

    invoke-static {p1, v3, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9f

    return-object v0

    :cond_9f
    :goto_9f
    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->$launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    iput-object v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmap$2;->label:I

    invoke-static {p1, v1, v3, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$buildLauncherBitmapInternal(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_ae

    return-object v0

    :cond_ae
    :goto_ae
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
