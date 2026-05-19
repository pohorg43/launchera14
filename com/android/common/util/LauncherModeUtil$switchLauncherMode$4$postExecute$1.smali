.class final Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$4$postExecute$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/LauncherModeUtil;->switchLauncherMode(Landroid/content/Context;Landroid/net/Uri;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$4$postExecute$1;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$4$postExecute$1;->invoke(Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Z)V
    .registers 4

    iget-object p0, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$4$postExecute$1;->$context:Landroid/content/Context;

    const-string p1, "content://com.coloros.scenemode.provider"

    const-string v0, "loadFinishedLauncher"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/common/util/LauncherModeUtil;->access$notifyLauncherModeChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
