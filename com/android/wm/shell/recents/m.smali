.class public final synthetic Lcom/android/wm/shell/recents/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/m;->a:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/m;->a:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    invoke-static {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->d(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)V

    return-void
.end method
