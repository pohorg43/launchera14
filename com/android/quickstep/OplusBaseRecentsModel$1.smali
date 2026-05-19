.class public final Lcom/android/quickstep/OplusBaseRecentsModel$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/OplusBaseRecentsModel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/OplusBaseRecentsModel;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OplusBaseRecentsModel;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsModel$1;->this$0:Lcom/android/quickstep/OplusBaseRecentsModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string/jumbo p1, "onReceive(), action="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    const-string v0, "QuickStep"

    const-string v1, "OplusBaseRecentsModel"

    invoke-static {p1, p2, v0, v1}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel$1;->this$0:Lcom/android/quickstep/OplusBaseRecentsModel;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mIconCache:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/TaskIconCache;->clearCache()V

    return-void
.end method
