.class Lcom/android/common/util/LauncherAnimationLevelUtils$2;
.super Lcom/oplus/osense/eventinfo/OsenseEventCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/LauncherAnimationLevelUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/common/util/LauncherAnimationLevelUtils;


# direct methods
.method public constructor <init>(Lcom/android/common/util/LauncherAnimationLevelUtils;)V
    .registers 2

    iput-object p1, p0, Lcom/android/common/util/LauncherAnimationLevelUtils$2;->this$0:Lcom/android/common/util/LauncherAnimationLevelUtils;

    invoke-direct {p0}, Lcom/oplus/osense/eventinfo/OsenseEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventSceneChanged(Lcom/oplus/osense/eventinfo/OsenseEventResult;)V
    .registers 4

    const-string/jumbo v0, "onEventSceneChanged: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/osense/eventinfo/OsenseEventResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAnimationLevelUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/common/util/LauncherAnimationLevelUtils$2;->this$0:Lcom/android/common/util/LauncherAnimationLevelUtils;

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherAnimationLevelUtils;->access$000(Lcom/android/common/util/LauncherAnimationLevelUtils;Lcom/oplus/osense/eventinfo/OsenseEventResult;)V

    return-void
.end method
