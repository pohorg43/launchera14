.class Lcom/android/launcher/mode/LauncherModeManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/common/util/OnFeatureChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/mode/LauncherModeManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/mode/LauncherModeManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/mode/LauncherModeManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/mode/LauncherModeManager$1;->this$0:Lcom/android/launcher/mode/LauncherModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureChanged()V
    .registers 3

    const-string v0, "LauncherModeManager"

    const-string v1, "default add to workspace change false"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/mode/LauncherModeManager;->access$000(Z)V

    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager$1;->this$0:Lcom/android/launcher/mode/LauncherModeManager;

    invoke-static {p0}, Lcom/android/launcher/mode/LauncherModeManager;->access$100(Lcom/android/launcher/mode/LauncherModeManager;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "is_add_app_to_workspace_for_drawer_mode"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
