.class Lcom/android/launcher/model/ChildrenModeManager$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/model/ChildrenModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/model/ChildrenModeManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/model/ChildrenModeManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/model/ChildrenModeManager$1;->this$0:Lcom/android/launcher/model/ChildrenModeManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const-string p1, "Children mode settings changed! oldState:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/model/ChildrenModeManager$1;->this$0:Lcom/android/launcher/model/ChildrenModeManager;

    invoke-static {v0}, Lcom/android/launcher/model/ChildrenModeManager;->access$000(Lcom/android/launcher/model/ChildrenModeManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChildrenModeManager"

    invoke-static {v0, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/model/ChildrenModeManager$1;->this$0:Lcom/android/launcher/model/ChildrenModeManager;

    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->access$100(Lcom/android/launcher/model/ChildrenModeManager;)V

    return-void
.end method
