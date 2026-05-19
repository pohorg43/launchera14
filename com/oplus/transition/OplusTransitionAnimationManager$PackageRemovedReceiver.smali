.class Lcom/oplus/transition/OplusTransitionAnimationManager$PackageRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/transition/OplusTransitionAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageRemovedReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/transition/OplusTransitionAnimationManager;


# direct methods
.method private constructor <init>(Lcom/oplus/transition/OplusTransitionAnimationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/transition/OplusTransitionAnimationManager$PackageRemovedReceiver;->this$0:Lcom/oplus/transition/OplusTransitionAnimationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/transition/OplusTransitionAnimationManager;Lcom/oplus/transition/OplusTransitionAnimationManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/transition/OplusTransitionAnimationManager$PackageRemovedReceiver;-><init>(Lcom/oplus/transition/OplusTransitionAnimationManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_44

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_44

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive, package removed, pkgName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ac = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_44

    if-eqz p0, :cond_44

    invoke-virtual {p1, p0}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V

    :cond_44
    :goto_44
    return-void
.end method
