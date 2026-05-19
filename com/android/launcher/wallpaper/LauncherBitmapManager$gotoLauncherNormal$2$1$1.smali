.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $it:Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll4/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2$1$1;->$it:Ll4/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2$1$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$gotoLauncherNormal$2$1$1;->$it:Ll4/d;

    if-eqz p0, :cond_9

    sget-object v0, Lh4/z;->a:Lh4/z;

    invoke-interface {p0, v0}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
