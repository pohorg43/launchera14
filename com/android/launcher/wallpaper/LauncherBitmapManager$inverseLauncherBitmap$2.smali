.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->inverseLauncherBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher3/Launcher;Ll4/d;)Ljava/lang/Object;
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
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$inverseLauncherBitmap$2"
    f = "LauncherBitmapManager.kt"
    l = {
        0x18d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $launcher:Lcom/android/launcher3/Launcher;

.field public final synthetic $screenBitmap:Landroid/graphics/Bitmap;

.field private synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Lcom/android/launcher3/Launcher;",
            "Landroid/graphics/Bitmap;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$screenBitmap:Landroid/graphics/Bitmap;

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

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$screenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;Ll4/d;)V

    iput-object p1, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    if-ne v1, v2, :cond_12

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_e2

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lm7/j0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMIsTextCanTransferColor$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$screenBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$dealOPWeatherWidget(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;)V

    :cond_37
    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$screenBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMLauncherScreenBitmapConfig$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    move-result-object v3

    const/4 v10, 0x0

    const-string/jumbo v11, "uri.path"

    if-eqz v3, :cond_85

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$screenBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v6, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->getMNormalFileNameUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_85

    if-eqz v4, :cond_85

    invoke-virtual {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->getMNormalFileNameUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_82

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6, v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getImagePath(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_6b

    goto :goto_82

    :cond_6b
    sget-object v6, Lm7/y0;->d:Lm7/f0;

    new-instance v7, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$1$1;

    invoke-direct {v7, v5, v3, v4, v10}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$1$1;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Ljava/io/File;Landroid/graphics/Bitmap;Ll4/d;)V

    const/4 v8, 0x2

    const/4 v12, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v12

    invoke-static/range {v3 .. v8}, Lm7/h;->a(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/p0;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_85

    :cond_82
    :goto_82
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_85
    :goto_85
    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    const-string v5, "inverseBitmap"

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4, v9}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$dealWithCellLayout(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMLauncherScreenBitmapConfig$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    move-result-object v3

    if-eqz v3, :cond_d6

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->getMBlackFileNameUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_d6

    invoke-virtual {v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->getMBlackFileNameUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_d3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5, v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getImagePath(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_b7

    goto :goto_d3

    :cond_b7
    invoke-static {v4}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getMInvertBitmapDefers$p(Lcom/android/launcher/wallpaper/LauncherBitmapManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    sget-object v5, Lm7/y0;->d:Lm7/f0;

    new-instance v6, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;

    invoke-direct {v6, v4, v3, v9, v10}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2$2$1;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Ljava/io/File;Landroid/graphics/Bitmap;Ll4/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, v5

    move v5, v10

    invoke-static/range {v3 .. v8}, Lm7/h;->a(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/p0;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    :cond_d3
    :goto_d3
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_d6
    :goto_d6
    iput-object v9, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->label:I

    invoke-static {v1, p0}, Lm7/d;->a(Ljava/util/Collection;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e1

    return-object v0

    :cond_e1
    move-object v0, v9

    :goto_e2
    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->$screenBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$recycleBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$inverseLauncherBitmap$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {p0, v0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$recycleBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Bitmap;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
