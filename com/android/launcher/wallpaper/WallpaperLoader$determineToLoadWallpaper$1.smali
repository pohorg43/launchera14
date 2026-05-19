.class final Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/WallpaperLoader;->determineToLoadWallpaper(Z)V
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
    c = "com.android.launcher.wallpaper.WallpaperLoader$determineToLoadWallpaper$1"
    f = "WallpaperLoader.kt"
    l = {
        0x8b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $release:Z

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/WallpaperLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/WallpaperLoader;ZLl4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/wallpaper/WallpaperLoader;",
            "Z",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->this$0:Lcom/android/launcher/wallpaper/WallpaperLoader;

    iput-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->$release:Z

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

    new-instance p1, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->this$0:Lcom/android/launcher/wallpaper/WallpaperLoader;

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->$release:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;-><init>(Lcom/android/launcher/wallpaper/WallpaperLoader;ZLl4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    const-string p1, "Wallpapers"

    const-string v1, "WallpaperLoader"

    const-string v3, "initWallpaperBrightness failed cellLayout is null, try again after delay sometime"

    invoke-static {p1, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x14

    iput v2, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->label:I

    invoke-static {v3, v4, p0}, Lm7/s0;->a(JLl4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2c

    return-object v0

    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->this$0:Lcom/android/launcher/wallpaper/WallpaperLoader;

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperLoader$determineToLoadWallpaper$1;->$release:Z

    invoke-virtual {p1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->determineToLoadWallpaper(Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
