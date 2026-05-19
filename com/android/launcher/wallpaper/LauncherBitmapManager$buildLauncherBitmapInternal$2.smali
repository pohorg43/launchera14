.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->buildLauncherBitmapInternal(Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Ll4/d;)Ljava/lang/Object;
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
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$buildLauncherBitmapInternal$2"
    f = "LauncherBitmapManager.kt"
    l = {
        0x15e,
        0x165
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $launcher:Lcom/android/launcher3/Launcher;

.field public final synthetic $launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

.field public J$0:J

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Lcom/android/launcher3/Launcher;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;",
            "Lcom/android/launcher3/Launcher;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->$launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    iput-object p3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->$launcher:Lcom/android/launcher3/Launcher;

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

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->$launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;Lcom/android/launcher3/Launcher;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "LauncherBitmapManager"

    if-eqz v1, :cond_28

    if-eq v1, v3, :cond_21

    if-ne v1, v2, :cond_19

    iget-wide v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->J$0:J

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->L$0:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_e5

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    iget-wide v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->J$0:J

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_b8

    :cond_28
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    const-string p1, "buildLauncherBitmap , start."

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->$launcherScreenBitmapConfig:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    if-nez v1, :cond_41

    sget-object v1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->Companion:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Companion;

    new-instance v5, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    invoke-direct {v5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;-><init>()V

    invoke-virtual {v1, v5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Companion;->create(Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    move-result-object v1

    :cond_41
    invoke-static {p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$setMLauncherScreenBitmapConfig$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 p1, 0x0

    :try_start_49
    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/compat/content/res/ConfigurationNative;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p1
    :try_end_57
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_49 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5c
    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMLauncherScreenBitmapConfig$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    move-result-object v1

    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->getMCurrentFlipFont()I

    move-result v7

    if-ltz v7, :cond_8f

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->getMCurrentFlipFont()I

    move-result v7

    if-eq v7, p1, :cond_8f

    const-string p0, "buildLauncherBitmap , the system font id is no equal the current font. mLauncherScreenBitmapConfig.mCurrentFlipFont = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->getMCurrentFlipFont()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " newFlipFont = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_8f
    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$canMakeLauncherBitmapNow(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;)Z

    move-result p1

    if-nez p1, :cond_9c

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_9c
    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->checkLauncherStateIsNormal(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a9

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_a9
    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->$launcher:Lcom/android/launcher3/Launcher;

    iput-wide v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->J$0:J

    iput v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->label:I

    invoke-static {p1, v1, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$makeLauncherBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b8

    return-object v0

    :cond_b8
    :goto_b8
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_d0

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_d0

    const-string p0, "buildLauncherBitmap , saveBitmap return, because isMultiWindowMode!"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_d0
    if-eqz p1, :cond_e8

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->$launcher:Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->L$0:Ljava/lang/Object;

    iput-wide v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->J$0:J

    iput v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$buildLauncherBitmapInternal$2;->label:I

    invoke-static {v1, p1, v3, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$inverseLauncherBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Bitmap;Lcom/android/launcher3/Launcher;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_e3

    return-object v0

    :cond_e3
    move-object p0, p1

    move-wide v0, v5

    :goto_e5
    if-nez p0, :cond_ef

    move-wide v5, v0

    :cond_e8
    const-string/jumbo p0, "makeLauncherBitmap, launcher bitmap build failed."

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v5

    :cond_ef
    const-string/jumbo p0, "makeLauncherBitmap, total time = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
